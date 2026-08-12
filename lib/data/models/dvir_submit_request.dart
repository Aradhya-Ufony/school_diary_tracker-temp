class DvirSubmitRequest {
  final int schoolBusId;
  final int driverUserId;
  final DateTime inspectionDate;
  final String tripType;
  final double? odometerReading;
  final String? notes;
  final double? latitude;
  final double? longitude;
  final String? deviceId;
  final List<DvirChecklistItemModel> checklistItems;
  final String signatureBase64;

  const DvirSubmitRequest({
    required this.schoolBusId,
    required this.driverUserId,
    required this.inspectionDate,
    required this.tripType,
    this.odometerReading,
    this.notes,
    this.latitude,
    this.longitude,
    this.deviceId,
    required this.checklistItems,
    required this.signatureBase64,
  });

  Map<String, dynamic> toJson() => {
    'schoolBusId': schoolBusId,
    'driverUserId': driverUserId,
    'inspectionDate': inspectionDate.toIso8601String(),
    'tripType': tripType,
    'odometerReading': odometerReading ?? 0.0,
    'notes': notes ?? '',
    'latitude': latitude ?? 0.0,
    'longitude': longitude ?? 0.0,
    'deviceId': deviceId ?? '',
    'checklistItems': checklistItems.map((e) => e.toJson()).toList(),
    'signature': {
      'signatureBase64': signatureBase64,
    },
  };
}

class DvirChecklistItemModel {
  final String zoneCode;
  final bool isPassed;
  final String? notes;
  final String? photo; // Local file path (or base64 string during upload)

  const DvirChecklistItemModel({
    required this.zoneCode,
    required this.isPassed,
    this.notes,
    this.photo,
  });

  Map<String, dynamic> toJson() => {
    'zoneCode': zoneCode,
    'isPassed': isPassed,
    'notes': notes ?? '',
    'photo': photo,
  };

  DvirChecklistItemModel copyWith({
    String? zoneCode,
    bool? isPassed,
    String? notes,
    String? photo,
  }) {
    return DvirChecklistItemModel(
      zoneCode: zoneCode ?? this.zoneCode,
      isPassed: isPassed ?? this.isPassed,
      notes: notes ?? this.notes,
      photo: photo ?? this.photo,
    );
  }
}