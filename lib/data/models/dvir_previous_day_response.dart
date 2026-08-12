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
      dvirId: json['dvirId'] as String? ?? '',
      busRegistrationNumber: json['busRegistrationNumber'] as String? ?? '',
      inspectionDate: DateTime.parse(json['inspectionDate'] as String),
      tripType: json['tripType'] as String? ?? '',
      overallStatus: json['overallStatus'] as String? ?? '',
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
    return DefectModel(
      defectId: json['defectId'] as String? ?? '',
      zoneCode: json['zoneCode'] as String? ?? '',
      description: json['description'] as String? ?? '',
      photoUrl: json['photoUrl'] as String?,
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
    return WorkOrderModel(
      workOrderId: json['workOrderId'] as String? ?? '',
      resolutionType: json['resolutionType'] as String? ?? '',
      subAdminNotes: (json['subAdminNotes'] ?? json['mechanicNotes']) as String? ?? '',
      subAdminSignedBy: (json['subAdminSignedBy'] ?? json['mechanicSignedBy']) as String? ?? '',
      subAdminSignedAt: DateTime.parse((json['subAdminSignedAt'] ?? json['mechanicSignedAt']) as String),
    );
  }
}