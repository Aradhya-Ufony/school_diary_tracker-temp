class IncidentCrashStudent {
  final int childId;
  final String? childName;
  final bool wasInjured;
  final String? injurySeverity;
  final String? medicalFacilityTransportedTo;
  final String? notes;

  IncidentCrashStudent({
    required this.childId,
    this.childName,
    required this.wasInjured,
    this.injurySeverity,
    this.medicalFacilityTransportedTo,
    this.notes,
  });

  Map<String, dynamic> toJson() => {
        'childId': childId,
        'childName': childName,
        'wasInjured': wasInjured,
        'injurySeverity': injurySeverity,
        'medicalFacilityTransportedTo': medicalFacilityTransportedTo,
        'notes': notes,
      };

  factory IncidentCrashStudent.fromJson(Map<String, dynamic> json) {
    return IncidentCrashStudent(
      childId: _parseInt(json['childId']),
      childName: json['childName'] as String?,
      wasInjured: json['wasInjured'] as bool? ?? false,
      injurySeverity: json['injurySeverity'] as String?,
      medicalFacilityTransportedTo: json['medicalFacilityTransportedTo'] as String?,
      notes: json['notes'] as String?,
    );
  }
}

class IncidentCrashEvidence {
  final int? id;
  final int? staticMediaId;
  final String? mediaUrl;
  final String? stream; // base64 string
  final String fileName;
  final String mediaType; // image/jpeg, Video, etc.
  final String? description;
  final String? localFilePath;
  final String? uploadedDate;

  IncidentCrashEvidence({
    this.id,
    this.staticMediaId,
    this.mediaUrl,
    this.stream,
    required this.fileName,
    this.mediaType = 'image/jpeg',
    this.description,
    this.localFilePath,
    this.uploadedDate,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'fileName': fileName,
      'mediaType': mediaType,
    };
    if (stream != null) {
      var cleanStream = stream!;
      if (cleanStream.contains(',')) {
        cleanStream = cleanStream.split(',').last;
      }
      map['stream'] = cleanStream;
    }
    if (mediaUrl != null) map['mediaUrl'] = mediaUrl;
    if (description != null) map['description'] = description;
    return map;
  }

  factory IncidentCrashEvidence.fromJson(Map<String, dynamic> json) {
    return IncidentCrashEvidence(
      id: _parseIntNullable(json['id']),
      staticMediaId: _parseIntNullable(json['staticMediaId']),
      mediaUrl: json['mediaUrl']?.toString() ??
          json['url']?.toString() ??
          json['fileUrl']?.toString() ??
          json['imageUrl']?.toString(),
      stream: json['stream'] as String?,
      fileName: json['fileName'] as String? ?? 'evidence.jpg',
      mediaType: json['mediaType'] as String? ?? 'image/jpeg',
      description: json['description'] as String?,
      uploadedDate: json['uploadedDate'] as String?,
    );
  }
}

class IncidentCrashAttachment {
  final int id;
  final int evidenceId;
  final String fileUrl;
  final String mediaType;
  final String approvalStatus;

  IncidentCrashAttachment({
    required this.id,
    required this.evidenceId,
    required this.fileUrl,
    required this.mediaType,
    required this.approvalStatus,
  });

  factory IncidentCrashAttachment.fromJson(Map<String, dynamic> json) {
    return IncidentCrashAttachment(
      id: _parseInt(json['id']),
      evidenceId: _parseInt(json['evidenceId']),
      fileUrl: json['fileUrl'] as String? ?? '',
      mediaType: json['mediaType'] as String? ?? 'Photo',
      approvalStatus: json['approvalStatus'] as String? ?? 'Approved',
    );
  }
}

class IncidentCrashLog {
  final int? id;
  final DateTime crashTimestamp;
  final int schoolBranchId;
  final String? schoolBranchName;
  final int routeId;
  final String? routeName;
  final int schoolBusId;
  final String busNumber;
  final int driverUserId;
  final String? driverName;
  final String? driverPhone;
  final double latitude;
  final double longitude;
  final String? locationDescription;
  final String? crashType;
  final bool hasFatalities;
  final bool hasInjuriesRequiringMedicalTreatment;
  final bool isVehicleTowed;
  final bool wasCitationIssued;
  final String? lawEnforcementAgency;
  final String? officerName;
  final String? badgeNumber;
  final String? policeReportNumber;
  final String? driverNotes;
  final List<IncidentCrashStudent> students;
  final List<IncidentCrashEvidence> evidences;
  final List<IncidentCrashAttachment> attachments;
  
  // DOT testing outcomes
  final bool requiresAlcoholTest;
  final bool requiresDrugTest;
  final DateTime? alcoholTestDeadline;
  final DateTime? drugTestDeadline;
  final String? alcoholTestStatus;
  final String? drugTestStatus;
  final String? status;
  final String? regulatoryBasis;
  final String? citationImpactExplanation;
  final double? alcoholDeadlineUrgency;
  final double? drugDeadlineUrgency;
  final double? alcoholMinutesRemaining;
  final double? drugMinutesRemaining;

  IncidentCrashLog({
    this.id,
    required this.crashTimestamp,
    required this.schoolBranchId,
    this.schoolBranchName,
    required this.routeId,
    this.routeName,
    required this.schoolBusId,
    required this.busNumber,
    required this.driverUserId,
    this.driverName,
    this.driverPhone,
    required this.latitude,
    required this.longitude,
    this.locationDescription,
    this.crashType,
    required this.hasFatalities,
    required this.hasInjuriesRequiringMedicalTreatment,
    required this.isVehicleTowed,
    required this.wasCitationIssued,
    this.lawEnforcementAgency,
    this.officerName,
    this.badgeNumber,
    this.policeReportNumber,
    this.driverNotes,
    required this.students,
    required this.evidences,
    this.attachments = const [],
    this.requiresAlcoholTest = false,
    this.requiresDrugTest = false,
    this.alcoholTestDeadline,
    this.drugTestDeadline,
    this.alcoholTestStatus,
    this.drugTestStatus,
    this.status,
    this.regulatoryBasis,
    this.citationImpactExplanation,
    this.alcoholDeadlineUrgency,
    this.drugDeadlineUrgency,
    this.alcoholMinutesRemaining,
    this.drugMinutesRemaining,
  });

  Map<String, dynamic> toJson() {
    final evidencesJson = evidences.map((e) => e.toJson()).toList();
    return {
      'crashTimestamp': crashTimestamp.toUtc().toIso8601String(),
      'schoolBranchId': schoolBranchId,
      'routeId': routeId,
      'busId': schoolBusId,
      'schoolBusId': schoolBusId,
      'busNumber': busNumber,
      'driverUserId': driverUserId,
      'latitude': latitude,
      'longitude': longitude,
      'locationDescription': locationDescription,
      'hasFatalities': hasFatalities,
      'hasInjuriesRequiringMedicalTreatment': hasInjuriesRequiringMedicalTreatment,
      'isVehicleTowed': isVehicleTowed,
      'wasCitationIssued': wasCitationIssued,
      'lawEnforcementAgency': lawEnforcementAgency,
      'officerName': officerName,
      'badgeNumber': badgeNumber,
      'policeReportNumber': policeReportNumber,
      'driverNotes': driverNotes,
      'students': students.map((e) => e.toJson()).toList(),
      'evidences': evidencesJson,
      'attachments': evidencesJson,
    };
  }

  factory IncidentCrashLog.fromJson(Map<String, dynamic> json) {
    var rawId = json['id'] ?? json['incidentCrashLogId'];
    int? parsedId = _parseIntNullable(rawId);

    var rawStudents = json['students'] as List<dynamic>?;
    List<IncidentCrashStudent> parsedStudents = rawStudents != null
        ? rawStudents.map((e) => IncidentCrashStudent.fromJson(e as Map<String, dynamic>)).toList()
        : [];

    var rawEvidences = json['evidences'] as List<dynamic>?;
    List<IncidentCrashEvidence> parsedEvidences = rawEvidences != null
        ? rawEvidences.map((e) => IncidentCrashEvidence.fromJson(e as Map<String, dynamic>)).toList()
        : [];

    var rawAttachments = json['attachments'] as List<dynamic>?;
    List<IncidentCrashAttachment> parsedAttachments = rawAttachments != null
        ? rawAttachments.map((e) => IncidentCrashAttachment.fromJson(e as Map<String, dynamic>)).toList()
        : [];

    final rawAlcohol = _parseDoubleNullable(json['alcoholMinutesRemaining']);
    final rawDrug = _parseDoubleNullable(json['drugMinutesRemaining']);

    double? alcoholMin;
    if (rawAlcohol != null) {
      if (rawAlcohol > 120.0) {
        // Convert from 8-hour limit base (480 mins) to 2-hour limit base (120 mins)
        final elapsed = 480.0 - rawAlcohol;
        final remaining = 120.0 - elapsed;
        alcoholMin = remaining > 0 ? remaining : 0.0;
      } else {
        alcoholMin = rawAlcohol;
      }
    }

    double? drugMin;
    if (rawDrug != null) {
      if (rawDrug > 480.0) {
        // Convert from 32-hour limit base (1920 mins) to 8-hour limit base (480 mins)
        final elapsed = 1920.0 - rawDrug;
        final remaining = 480.0 - elapsed;
        drugMin = remaining > 0 ? remaining : 0.0;
      } else {
        drugMin = rawDrug;
      }
    }

    return IncidentCrashLog(
      id: parsedId,
      crashTimestamp: _parseTimestamp(json['crashTimestamp']),
      schoolBranchId: _parseInt(json['schoolBranchId']),
      schoolBranchName: json['schoolBranchName'] as String?,
      routeId: _parseInt(json['routeId']),
      routeName: json['routeName'] as String?,
      schoolBusId: _parseInt(json['schoolBusId'] ?? json['busId']),
      busNumber: json['busNumber'] as String? ?? '',
      driverUserId: _parseInt(json['driverUserId']),
      driverName: json['driverName'] as String?,
      driverPhone: json['driverPhone'] as String?,
      latitude: _parseDouble(json['latitude']),
      longitude: _parseDouble(json['longitude']),
      locationDescription: json['locationDescription'] as String?,
      crashType: json['crashType'] as String?,
      hasFatalities: json['hasFatalities'] as bool? ?? false,
      hasInjuriesRequiringMedicalTreatment: json['hasInjuriesRequiringMedicalTreatment'] as bool? ?? false,
      isVehicleTowed: json['isVehicleTowed'] as bool? ?? false,
      wasCitationIssued: json['wasCitationIssued'] as bool? ?? false,
      lawEnforcementAgency: json['lawEnforcementAgency'] as String?,
      officerName: json['officerName'] as String?,
      badgeNumber: json['badgeNumber'] as String?,
      policeReportNumber: json['policeReportNumber'] as String?,
      driverNotes: json['driverNotes'] as String?,
      students: parsedStudents,
      evidences: parsedEvidences,
      attachments: parsedAttachments,
      requiresAlcoholTest: json['requiresAlcoholTest'] as bool? ?? false,
      requiresDrugTest: json['requiresDrugTest'] as bool? ?? false,
      alcoholTestDeadline: json['alcoholTestDeadline'] != null ? _parseTimestamp(json['alcoholTestDeadline']) : null,
      drugTestDeadline: json['drugTestDeadline'] != null ? _parseTimestamp(json['drugTestDeadline']) : null,
      alcoholTestStatus: json['alcoholTestStatus'] as String?,
      drugTestStatus: json['drugTestStatus'] as String?,
      status: json['status'] as String?,
      regulatoryBasis: json['regulatoryBasis'] as String?,
      citationImpactExplanation: json['citationImpactExplanation'] as String?,
      alcoholDeadlineUrgency: _parseDoubleNullable(json['alcoholDeadlineUrgency']),
      drugDeadlineUrgency: _parseDoubleNullable(json['drugDeadlineUrgency']),
      alcoholMinutesRemaining: alcoholMin,
      drugMinutesRemaining: drugMin,
    );
  }
}

int _parseInt(dynamic value, [int defaultValue = 0]) {
  if (value == null) return defaultValue;
  if (value is num) return value.toInt();
  return int.tryParse(value.toString()) ?? defaultValue;
}

int? _parseIntNullable(dynamic value) {
  if (value == null) return null;
  if (value is num) return value.toInt();
  return int.tryParse(value.toString());
}

double _parseDouble(dynamic value, [double defaultValue = 0.0]) {
  if (value == null) return defaultValue;
  if (value is num) return value.toDouble();
  return double.tryParse(value.toString()) ?? defaultValue;
}

double? _parseDoubleNullable(dynamic value) {
  if (value == null) return null;
  if (value is num) return value.toDouble();
  return double.tryParse(value.toString());
}

DateTime _parseTimestamp(dynamic value) {
  if (value == null) return DateTime.now();
  if (value is DateTime) return value;
  final str = value.toString();
  if (str.isEmpty) return DateTime.now();
  if (!str.endsWith('Z') && !str.contains('+') && !RegExp(r'-\d\d:\d\d').hasMatch(str)) {
    return DateTime.tryParse('${str}Z') ?? DateTime.parse(str);
  }
  return DateTime.parse(str);
}
