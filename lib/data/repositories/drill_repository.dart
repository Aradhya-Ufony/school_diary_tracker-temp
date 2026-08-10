import 'dart:convert';
import 'dart:developer' as dev;
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../../core/utils/image_utils.dart';
import '../models/drill_checklist_item.dart';
import '../models/drill_command_response.dart';
import '../models/drill_compliance_status.dart';
import '../models/drill_evidence.dart';
import '../models/drill_log.dart';
import '../models/drill_roster_response.dart';

class DrillRepository {
  final ApiClient _apiClient;

  DrillRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  Future<DrillRosterResponse> getRoster(int routeId, String busNumber) async {
    // Attempt standard endpoint first, with fallback paths for ASP.NET routing variations (e.g., api/drill/roster or Drill/roster)
    final candidateEndpoints = [
      ApiEndpoints.drillRoster,            // 'drill/roster'
      'api/${ApiEndpoints.drillRoster}',     // 'api/drill/roster'
      'Drill/roster',                        // 'Drill/roster'
      'api/Drill/roster',                    // 'api/Drill/roster'
    ];

    DioException? lastException;
    for (final endpoint in candidateEndpoints) {
      try {
        final response = await _apiClient.get(
          endpoint,
          query: {'routeId': routeId, 'vehicleLicenseNumber': busNumber},
        );
        final data = response.data is String ? jsonDecode(response.data) : response.data;
        if (data is List) {
          if (data.isEmpty) {
            return DrillRosterResponse(
              routeId: routeId,
              routeName: '',
              busNumber: '',
              asOfTime: DateTime.now(),
              children: [],
            );
          }
          final first = data.first;
          if (first is Map<String, dynamic> && (first.containsKey('children') || first.containsKey('items'))) {
            return DrillRosterResponse.fromJson(first);
          } else {
            final children = data
                .map((e) => DrillChecklistItem.fromJson(e as Map<String, dynamic>))
                .toList();
            final parsedRouteId = first is Map<String, dynamic> ? (first['routeId'] as num?)?.toInt() ?? routeId : routeId;
            final routeName = first is Map<String, dynamic> ? first['routeName'] as String? ?? '' : '';
            final bNumber = first is Map<String, dynamic> ? (first['vehicleLicenseNumber'] ?? first['busNumber']) as String? ?? '' : '';
            return DrillRosterResponse(
              routeId: parsedRouteId,
              routeName: routeName,
              busNumber: bNumber,
              asOfTime: DateTime.now(),
              children: children,
            );
          }
        } else if (data is Map<String, dynamic>) {
          return DrillRosterResponse.fromJson(data);
        } else {
          throw Exception('Unexpected response format: $data');
        }
      } on DioException catch (e) {
        lastException = e;
        if (e.response?.statusCode != 404) {
          rethrow; // If error is not 404 (e.g., 500 or 401), rethrow immediately
        }
      }
    }

    throw lastException ?? Exception('Roster endpoint not found (404)');
  }

  Future<List<DrillLog>> getDrillsForBus(String busNumber) async {
    final response = await _apiClient.get('${ApiEndpoints.drillBus}/$busNumber');
    final data = response.data is String ? jsonDecode(response.data) : response.data;
    if (data is List) {
      return data.map((e) => DrillLog.fromJson(e as Map<String, dynamic>)).toList();
    }
    return [];
  }

  Future<DrillCommandResponse> submitDrillLog(
    DrillLog drillLog, {
    void Function(int sent, int total)? onProgress,
  }) async {
    final Map<String, dynamic> payload = drillLog.toCreatePayloadJson();
    final List<dynamic> attachments = payload['attachments'] ?? [];

    for (int i = 0; i < drillLog.evidenceFiles.length; i++) {
      final item = drillLog.evidenceFiles[i];
      if (item.localFilePath != null && i < attachments.length) {
        final attachmentMap = attachments[i] as Map<String, dynamic>;
        if (item.mediaType != EvidenceMediaType.video) {
          attachmentMap['stream'] = await fileToBase64(item.localFilePath);
        }
      }
    }

    final hasVideos = drillLog.evidenceFiles.any((e) => e.mediaType == EvidenceMediaType.video && e.localFilePath != null);

    if (hasVideos) {
      final formData = FormData();
      formData.fields.add(
        MapEntry(
          'payload',
          jsonEncode(payload),
        ),
      );

      for (int i = 0; i < drillLog.evidenceFiles.length; i++) {
        final item = drillLog.evidenceFiles[i];
        if (item.mediaType == EvidenceMediaType.video && item.localFilePath != null) {
          formData.files.add(
            MapEntry(
              'video',
              await MultipartFile.fromFile(
                item.localFilePath!,
                filename: item.localFilePath!.split('/').last.split('\\').last,
                contentType: MediaType('video', 'mp4'),
              ),
            ),
          );
        }
      }

      final response = await _apiClient.post(
        ApiEndpoints.drillLog,
        data: formData,
        options: Options(
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        ),
        onSendProgress: onProgress,
      );
      final data = response.data is String ? jsonDecode(response.data) : response.data;
      dev.log('POST drill/log (multipart) response data: $data', name: 'DrillRepository');
      return DrillCommandResponse.fromJson(data as Map<String, dynamic>);
    } else {
      final response = await _apiClient.post(
        ApiEndpoints.drillLog,
        data: payload,
        onSendProgress: onProgress,
      );
      final data = response.data is String ? jsonDecode(response.data) : response.data;
      dev.log('POST drill/log response data: $data', name: 'DrillRepository');
      return DrillCommandResponse.fromJson(data as Map<String, dynamic>);
    }
  }

  Future<DrillLog> getDrillDetail(int drillLogId) async {
    final response = await _apiClient.get('${ApiEndpoints.drillDetail}/$drillLogId');
    final data = response.data is String ? jsonDecode(response.data) : response.data;
    return DrillLog.fromJson(data as Map<String, dynamic>);
  }

  Future<List<DrillComplianceStatus>> getComplianceStatus() async {
    final response = await _apiClient.get(ApiEndpoints.drillCompliance);
    final list = response.data is String ? jsonDecode(response.data) as List : response.data as List;
    return list.map((e) => DrillComplianceStatus.fromJson(e as Map<String, dynamic>)).toList();
  }
}
