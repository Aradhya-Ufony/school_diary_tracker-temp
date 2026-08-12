import 'drill_checklist_item.dart';
import 'drill_evidence.dart';

/// Complete evacuation drill log model.
class DrillLog {
  final int? id;
  final int routeId;
  final String drillType;
  final DateTime conductedAt;
  final double latitude;
  final double longitude;
  final String? notes;
  final List<DrillChecklistItem> checklistItems;
  final List<DrillEvidence> evidenceFiles;
  final String status;
  final String? conductedByName;
  final DateTime? approvedAt;
  final int? busId;
  final String? busNumber;
  final DateTime? startTime;
  final DateTime? endTime;
  final String? driverNotes;
  final String? conductedByDriverId;
  final String? conductedByDriverName;
  final String? adminNotes;

  DrillLog({
    this.id,
    required this.routeId,
    required this.drillType,
    required this.conductedAt,
    required this.latitude,
    required this.longitude,
    this.notes,
    required this.checklistItems,
    required this.evidenceFiles,
    this.status = 'PendingApproval',
    this.conductedByName,
    this.approvedAt,
    this.busId,
    this.busNumber,
    this.startTime,
    this.endTime,
    this.driverNotes,
    this.conductedByDriverId,
    this.conductedByDriverName,
    this.adminNotes,
  });

  Map<String, dynamic> toCreatePayloadJson() => {
        'drillLogId': id,
        'routeId': routeId,
        'vehicleLicenseNumber': busNumber,
        'drillType': drillType,
        'startTime': startTime?.toIso8601String() ?? conductedAt.toIso8601String(),
        'endTime': endTime?.toIso8601String(),
        'driverNotes': driverNotes ?? notes,
        'latitude': latitude,
        'longitude': longitude,
        'conductedByDriverId': int.tryParse(conductedByDriverId ?? ''),
        'conductedByDriverName': conductedByDriverName,
        'adminNotes': adminNotes,
        'children': checklistItems.map((e) => {
              'childId': e.childId,
              'childName': e.childName,
              'wasOnBus': e.wasOnBus,
              'isEvacuated': e.isEvacuated,
              'evacuationTime': e.evacuationTime?.toIso8601String(),
            }).toList(),
        'attachments': evidenceFiles.map((e) {
          return {
            'id': e.id,
            'evidenceId': e.id,
            'stream': null, // will be base64-encoded on upload
            'mediaUrl': e.mediaUrl,
            'approvalStatus': e.approvalStatus,
            'fileName': e.fileName ?? (e.localFilePath != null ? e.localFilePath!.split('/').last.split('\\').last : 'evidence.jpg'),
            'mimeType': e.mimeType ?? (e.mediaType == EvidenceMediaType.video ? 'video/mp4' : 'image/jpeg'),
            'createdAt': e.createdAt.toIso8601String(),
            'uploadedAt': e.uploadedAt?.toIso8601String(),
          };
        }).toList(),
      };

  factory DrillLog.fromJson(Map<String, dynamic> json) {
    final rawItems = json['children'] ?? 
                     json['Children'] ?? 
                     json['items'] ?? 
                     json['Items'] ?? 
                     json['checklist'] ?? 
                     json['Checklist'] ?? 
                     json['checklistItems'] ?? 
                     json['students'] ?? 
                     json['Students'] ?? 
                     json['roster'] ?? 
                     json['Roster'];
    final checklist = (rawItems as List<dynamic>?)
            ?.map((e) => DrillChecklistItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [];

    final rawEvidence = json['attachments'] ?? 
                        json['Attachments'] ?? 
                        json['evidences'] ?? 
                        json['Evidences'] ?? 
                        json['evidence'] ?? 
                        json['Evidence'];
    final evidence = (rawEvidence as List<dynamic>?)
            ?.map((e) {
              final map = Map<String, dynamic>.from(e as Map);
              if ((map.containsKey('evidenceId') || map.containsKey('EvidenceId')) && 
                  !(map.containsKey('id') || map.containsKey('Id'))) {
                final evidenceIdVal = map['evidenceId'] ?? map['EvidenceId'];
                map['id'] = int.tryParse(evidenceIdVal?.toString() ?? '');
              }
              return DrillEvidence.fromJson(map);
            })
            .toList() ??
        [];

    final routeIdVal = json['routeId'] ?? json['RouteId'];
    final routeId = routeIdVal is int
        ? routeIdVal
        : int.tryParse(routeIdVal?.toString() ?? '') ?? 0;

    final busIdVal = json['busId'] ?? json['BusId'];
    final busId = busIdVal is int
        ? busIdVal
        : int.tryParse(busIdVal?.toString() ?? '');

    final conductedAtStr = json['startTime'] ?? json['StartTime'] ?? json['conductedAt'] ?? json['ConductedAt'];
    final conductedAt = conductedAtStr != null
        ? DateTime.tryParse(conductedAtStr as String) ?? DateTime.now()
        : DateTime.now();

    final approvedAtStr = json['approvedAt'] ?? json['ApprovedAt'] ?? json['approvedDate'] ?? json['ApprovedDate'];
    final idVal = json['id'] ?? json['Id'] ?? json['drillLogId'] ?? json['DrillLogId'];
    final parsedId = idVal is int
        ? idVal
        : (idVal is num ? idVal.toInt() : int.tryParse(idVal?.toString() ?? ''));

    return DrillLog(
      id: parsedId,
      routeId: routeId,
      busId: busId,
      busNumber: (json['vehicleLicenseNumber'] ?? json['VehicleLicenseNumber'] ?? json['busNumber'] ?? json['BusNumber']) as String?,
      drillType: (json['drillType'] ?? json['DrillType']) as String? ?? 'Standard',
      conductedAt: conductedAt,
      startTime: (json['startTime'] ?? json['StartTime']) != null ? DateTime.tryParse((json['startTime'] ?? json['StartTime']) as String) : null,
      endTime: (json['endTime'] ?? json['EndTime']) != null ? DateTime.tryParse((json['endTime'] ?? json['EndTime']) as String) : null,
      latitude: ((json['latitude'] ?? json['Latitude']) as num?)?.toDouble() ?? 0.0,
      longitude: ((json['longitude'] ?? json['Longitude']) as num?)?.toDouble() ?? 0.0,
      notes: (json['driverNotes'] ?? json['DriverNotes'] ?? json['notes'] ?? json['Notes']) as String?,
      driverNotes: (json['driverNotes'] ?? json['DriverNotes']) as String?,
      checklistItems: checklist,
      evidenceFiles: evidence,
      status: (json['status'] ?? json['Status']) as String? ?? 'PendingApproval',
      conductedByName: (json['conductedByName'] ?? json['ConductedByName']) as String?,
      conductedByDriverId: (json['conductedByDriverId'] ?? json['ConductedByDriverId'])?.toString(),
      conductedByDriverName: (json['conductedByDriverName'] ?? json['ConductedByDriverName']) as String?,
      adminNotes: (json['adminNotes'] ?? json['AdminNotes']) as String?,
      approvedAt: approvedAtStr != null
          ? DateTime.tryParse(approvedAtStr as String)
          : null,
    );
  }
}
