// import '../../features/drills/data/models/drill_evidence.dart';
// import '../../features/drills/data/models/drill_response_code.dart';

import 'drill_evidence.dart';
import 'drill_response_code.dart';

/// Response envelope matching backend `DrillCommandResponse`
class DrillCommandResponse {
  final DrillResponseCode code;
  final String message;
  final int? drillLogId;
  final List<DrillEvidence>? attachments;

  const DrillCommandResponse({
    required this.code,
    required this.message,
    this.drillLogId,
    this.attachments,
  });

  factory DrillCommandResponse.fromJson(Map<String, dynamic> json) {
    final List<DrillEvidence> attachments = [];
    if (json['attachments'] is List) {
      for (final item in json['attachments'] as List) {
        attachments.add(DrillEvidence.fromJson(item as Map<String, dynamic>));
      }
    } else if (json['evidences'] is List) {
      for (final item in json['evidences'] as List) {
        attachments.add(DrillEvidence.fromJson(item as Map<String, dynamic>));
      }
    }

    return DrillCommandResponse(
      code: DrillResponseCode.fromString(json['code']),
      message: json['message'] as String? ?? '',
      drillLogId: json['drillLogId'] as int?,
      attachments: attachments.isNotEmpty ? attachments : null,
    );
  }

  Map<String, dynamic> toJson() => {
        'code': code.name,
        'message': message,
        'drillLogId': drillLogId,
        'attachments': attachments?.map((e) => e.toJson()).toList(),
      };
}
