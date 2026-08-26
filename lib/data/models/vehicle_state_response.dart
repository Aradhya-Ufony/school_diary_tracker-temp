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
    return VehicleStateResponse(
      schoolBusId: json['schoolBusId']?.toString() ?? '',
      currentState: json['currentState']?.toString() ?? 'ACTIVE',
      isBlocked: json['isBlocked'] as bool? ?? false,
      blockReason: json['blockReason']?.toString(),
    );
  }
}