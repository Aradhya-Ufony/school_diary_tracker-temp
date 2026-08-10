enum ComplianceLevel { green, amber, red }

/// Per-bus compliance status for compliance calendar
class DrillComplianceStatus {
  final int busId;
  final String busNumber;
  final DateTime? lastDrillDate;
  final DateTime? nextDrillDueDate;
  final ComplianceLevel status;
  final int daysRemainingOrOverdue;

  const DrillComplianceStatus({
    required this.busId,
    required this.busNumber,
    this.lastDrillDate,
    this.nextDrillDueDate,
    required this.status,
    required this.daysRemainingOrOverdue,
  });

  factory DrillComplianceStatus.fromJson(Map<String, dynamic> json) {
    final statusStr = (json['status'] as String? ?? 'green').toLowerCase();
    final statusEnum = statusStr == 'red'
        ? ComplianceLevel.red
        : (statusStr == 'amber' ? ComplianceLevel.amber : ComplianceLevel.green);

    return DrillComplianceStatus(
      busId: (json['busId'] ?? 0) as int,
      busNumber: (json['vehicleLicenseNumber'] ?? json['busNumber'] ?? '') as String,
      lastDrillDate: json['lastDrillDate'] != null
          ? DateTime.parse(json['lastDrillDate'] as String)
          : null,
      nextDrillDueDate: json['nextDrillDueDate'] != null
          ? DateTime.parse(json['nextDrillDueDate'] as String)
          : null,
      status: statusEnum,
      daysRemainingOrOverdue: json['daysRemainingOrOverdue'] as int? ?? 0,
    );
  }
}
