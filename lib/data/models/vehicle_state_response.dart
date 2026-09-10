class VehicleStateResponse {
  final String schoolBusId;
  final String currentState;
  final bool isBlocked;
  final String? blockReason;

  const VehicleStateResponse({
    required this.schoolBusId,
    required this.currentState,
    required this.isBlocked,
    this.blockReason,
  });

  factory VehicleStateResponse.fromJson(Map<String, dynamic> json) {
    final rawReason = json['blockReason'] ??
        json['reason'] ??
        json['issueType'] ??
        json['defectSummary'] ??
        json['defectDetails'] ??
        json['notes'] ??
        json['message'] ??
        json['description'];

    return VehicleStateResponse(
      schoolBusId: json['schoolBusId']?.toString() ?? '',
      currentState: json['currentState']?.toString() ?? 'ACTIVE',
      isBlocked: json['isBlocked'] as bool? ?? false,
      blockReason: rawReason?.toString(),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VehicleStateResponse &&
          runtimeType == other.runtimeType &&
          schoolBusId == other.schoolBusId &&
          currentState == other.currentState &&
          isBlocked == other.isBlocked &&
          blockReason == other.blockReason;

  @override
  int get hashCode => Object.hash(schoolBusId, currentState, isBlocked, blockReason);
}