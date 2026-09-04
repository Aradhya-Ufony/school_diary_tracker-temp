import 'dart:convert';
import 'dart:developer' as dev;
import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../models/incident_crash_models.dart';

class IncidentCrashRepository {
  final ApiClient _apiClient;

  IncidentCrashRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  Future<IncidentCrashLog> logIncident(IncidentCrashLog log) async {
    final payload = log.toJson();
    
    // We convert any media files locally to base64 if needed, 
    // but the ViewModel will do base64 fileToBase64 conversion before passing to repository.
    final response = await _apiClient.post(
      ApiEndpoints.incidentCrashLog,
      data: payload,
    );
    final data = response.data is String ? jsonDecode(response.data) : response.data;
    dev.log('POST incidentcrash/log response: $data', name: 'IncidentCrashRepository');
    
    if (data is Map<String, dynamic>) {
      // The backend returns responseCode, message, incidentCrashLogId, attachments.
      // We will parse incidentCrashLogId and build/fetch the updated IncidentCrashLog
      final rawIncidentId = data['incidentCrashLogId'];
      final incidentId = rawIncidentId is num
          ? rawIncidentId.toInt()
          : (rawIncidentId != null ? int.tryParse(rawIncidentId.toString()) : null);
      if (incidentId != null) {
        // Fetch full incident details containing DOT testing timelines, basis, and deadlines
        return getIncidentDetails(incidentId);
      }
    }
    throw Exception('Failed to log incident: Unexpected server response.');
  }

  Future<IncidentCrashLog> getIncidentDetails(int id) async {
    final response = await _apiClient.get('${ApiEndpoints.incidentCrash}/$id');
    final data = response.data is String ? jsonDecode(response.data) : response.data;
    dev.log('GET incidentcrash/$id response: $data', name: 'IncidentCrashRepository');
    return IncidentCrashLog.fromJson(data as Map<String, dynamic>);
  }

  Future<List<IncidentCrashLog>> getIncidentLogsForBus(int busId) async {
    final response = await _apiClient.get('${ApiEndpoints.incidentCrashBus}/$busId');
    final data = response.data is String ? jsonDecode(response.data) : response.data;
    if (data is List) {
      return data.map((e) => IncidentCrashLog.fromJson(e as Map<String, dynamic>)).toList();
    }
    return [];
  }

  Future<List<IncidentCrashLog>> getIncidentLogsForRoute(int routeId) async {
    final response = await _apiClient.get('${ApiEndpoints.incidentCrashRoute}/$routeId');
    final data = response.data is String ? jsonDecode(response.data) : response.data;
    if (data is List) {
      return data.map((e) => IncidentCrashLog.fromJson(e as Map<String, dynamic>)).toList();
    }
    return [];
  }
}
