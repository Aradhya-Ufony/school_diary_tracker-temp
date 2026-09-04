class DvirPreviousDayResponse {
  final bool hasPriorDvir;
  final bool requiresDriverAcknowledgment;
  final PriorDvirModel? priorDvir;

  const DvirPreviousDayResponse({
    required this.hasPriorDvir,
    required this.requiresDriverAcknowledgment,
    this.priorDvir,
  });

  factory DvirPreviousDayResponse.fromJson(Map<String, dynamic> json) {
    return DvirPreviousDayResponse(
      hasPriorDvir: json['hasPriorDvir'] as bool? ?? false,
      requiresDriverAcknowledgment: json['requiresDriverAcknowledgment'] as bool? ?? false,
      priorDvir: json['priorDvir'] != null
          ? PriorDvirModel.fromJson(json['priorDvir'] as Map<String, dynamic>)
          : null,
    );
  }
}

class PriorDvirModel {
  final String dvirId;
  final String busRegistrationNumber;
  final DateTime inspectionDate;
  final String tripType;
  final String overallStatus;
  final List<DefectModel> defects;
  final WorkOrderModel? workOrder;

  const PriorDvirModel({
    required this.dvirId,
    required this.busRegistrationNumber,
    required this.inspectionDate,
    required this.tripType,
    required this.overallStatus,
    required this.defects,
    this.workOrder,
  });

  factory PriorDvirModel.fromJson(Map<String, dynamic> json) {
    var defectsList = json['defects'] as List? ?? [];
    return PriorDvirModel(
      dvirId: json['dvirId']?.toString() ?? '',
      busRegistrationNumber: json['busRegistrationNumber']?.toString() ?? '',
      inspectionDate: json['inspectionDate'] != null
          ? DateTime.tryParse(json['inspectionDate'].toString()) ?? DateTime.now()
          : DateTime.now(),
      tripType: json['tripType']?.toString() ?? '',
      overallStatus: json['overallStatus']?.toString() ?? '',
      defects: defectsList.map((e) => DefectModel.fromJson(e as Map<String, dynamic>)).toList(),
      workOrder: json['workOrder'] != null
          ? WorkOrderModel.fromJson(json['workOrder'] as Map<String, dynamic>)
          : null,
    );
  }
}

class DefectModel {
  final String defectId;
  final String zoneCode;
  final String description;
  final String? photoUrl;
  final bool isSafetyCritical;

  const DefectModel({
    required this.defectId,
    required this.zoneCode,
    required this.description,
    this.photoUrl,
    required this.isSafetyCritical,
  });

  factory DefectModel.fromJson(Map<String, dynamic> json) {
    String? photo = json['photoUrl']?.toString() ??
        json['mediaUrl']?.toString() ??
        json['imageUrl']?.toString() ??
        json['url']?.toString() ??
        json['fileUrl']?.toString();

    if ((photo == null || photo.isEmpty) && json['evidences'] is List && (json['evidences'] as List).isNotEmpty) {
      final firstEv = (json['evidences'] as List).first;
      if (firstEv is Map) {
        photo = firstEv['mediaUrl']?.toString() ??
            firstEv['url']?.toString() ??
            firstEv['fileUrl']?.toString() ??
            firstEv['imageUrl']?.toString() ??
            firstEv['photoUrl']?.toString();
      }
    }

    return DefectModel(
      defectId: json['defectId']?.toString() ?? '',
      zoneCode: json['zoneCode']?.toString() ?? '',
      description: json['description']?.toString() ?? '',
      photoUrl: photo,
      isSafetyCritical: json['isSafetyCritical'] as bool? ?? false,
    );
  }
}

class WorkOrderModel {
  final String workOrderId;
  final String resolutionType;
  final String subAdminNotes;
  final String subAdminSignedBy;
  final DateTime subAdminSignedAt;

  const WorkOrderModel({
    required this.workOrderId,
    required this.resolutionType,
    required this.subAdminNotes,
    required this.subAdminSignedBy,
    required this.subAdminSignedAt,
  });

  factory WorkOrderModel.fromJson(Map<String, dynamic> json) {
    final signedAtStr = json['subAdminSignedAt'] ?? json['mechanicSignedAt'];
    return WorkOrderModel(
      workOrderId: json['workOrderId']?.toString() ?? '',
      resolutionType: json['resolutionType']?.toString() ?? '',
      subAdminNotes: (json['subAdminNotes'] ?? json['mechanicNotes'])?.toString() ?? '',
      subAdminSignedBy: (json['subAdminSignedBy'] ?? json['mechanicSignedBy'])?.toString() ?? '',
      subAdminSignedAt: signedAtStr != null
          ? DateTime.tryParse(signedAtStr.toString()) ?? DateTime.now()
          : DateTime.now(),
    );
  }
}