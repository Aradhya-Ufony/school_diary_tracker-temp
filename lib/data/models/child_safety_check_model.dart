/// Represents the response from `GET /childsafetycheck/active`.
class ActiveChildSafetyCheckResponse {
  final bool hasActiveCheck;
  final int? checkLogId;
  final int? tripId;
  final int? routeId;
  final String? routeName;
  final int? schoolBusId;
  final String? busNumber;
  final DateTime? triggerTimestamp;
  final DateTime? deadlineTimestamp;
  final int remainingSeconds;
  final String? status;

  ActiveChildSafetyCheckResponse({
    required this.hasActiveCheck,
    this.checkLogId,
    this.tripId,
    this.routeId,
    this.routeName,
    this.schoolBusId,
    this.busNumber,
    this.triggerTimestamp,
    this.deadlineTimestamp,
    this.remainingSeconds = 0,
    this.status,
  });

  /// Returns true if this check is genuinely active for the current shift
  /// (timer running, or triggered within the last 60 minutes).
  /// Stale checks from previous days or hours ago will return false.
  bool get shouldLockOnStartup {
    if (!hasActiveCheck) return false;
    if (remainingSeconds > 0) return true;

    if (triggerTimestamp != null) {
      final elapsedMinutes =
          DateTime.now().toUtc().difference(triggerTimestamp!.toUtc()).inMinutes;
      return elapsedMinutes >= 0 && elapsedMinutes <= 60;
    }

    return false;
  }

  factory ActiveChildSafetyCheckResponse.fromJson(Map<String, dynamic> json) {
    return ActiveChildSafetyCheckResponse(
      hasActiveCheck: json['hasActiveCheck'] == true ||
          json['HasActiveCheck'] == true ||
          json['has_active_check'] == true,
      checkLogId: (json['checkLogId'] ?? json['CheckLogId'] ?? json['check_log_id'] as num?)?.toInt(),
      tripId: (json['tripId'] ?? json['TripId'] ?? json['trip_id'] as num?)?.toInt(),
      routeId: (json['routeId'] ?? json['RouteId'] ?? json['route_id'] as num?)?.toInt(),
      routeName: (json['routeName'] ?? json['RouteName'] ?? json['route_name'])?.toString(),
      schoolBusId: (json['schoolBusId'] ?? json['SchoolBusId'] ?? json['school_bus_id'] as num?)?.toInt(),
      busNumber: (json['busNumber'] ?? json['BusNumber'] ?? json['bus_number'])?.toString(),
      triggerTimestamp: json['triggerTimestamp'] != null
          ? DateTime.tryParse(json['triggerTimestamp'].toString())
          : null,
      deadlineTimestamp: json['deadlineTimestamp'] != null
          ? DateTime.tryParse(json['deadlineTimestamp'].toString())
          : null,
      remainingSeconds: (json['remainingSeconds'] ?? json['RemainingSeconds'] ?? json['remaining_seconds'] as num?)?.toInt() ?? 0,
      status: (json['status'] ?? json['Status'])?.toString(),
    );
  }

  Map<String, dynamic> toJson() => {
        'hasActiveCheck': hasActiveCheck,
        'checkLogId': checkLogId,
        'tripId': tripId,
        'routeId': routeId,
        'routeName': routeName,
        'schoolBusId': schoolBusId,
        'busNumber': busNumber,
        'triggerTimestamp': triggerTimestamp?.toIso8601String(),
        'deadlineTimestamp': deadlineTimestamp?.toIso8601String(),
        'remainingSeconds': remainingSeconds,
        'status': status,
      };
}

/// Represents the request payload for `POST /childsafetycheck/complete`.
class CompleteChildSafetyCheckRequest {
  final int checkLogId;
  final int tripId;
  final int? driverUserId;
  final double latitude;
  final double longitude;
  final bool anySleepingChildFound;
  final int sleepingChildrenCount;
  final String? driverNotes;
  final String verificationMethod;
  final String? clientTimestamp;

  CompleteChildSafetyCheckRequest({
    required this.checkLogId,
    required this.tripId,
    this.driverUserId,
    required this.latitude,
    required this.longitude,
    required this.anySleepingChildFound,
    this.sleepingChildrenCount = 0,
    this.driverNotes,
    this.verificationMethod = 'AppSafetyButton',
    this.clientTimestamp,
  });

  Map<String, dynamic> toJson() => {
        'checkLogId': checkLogId,
        'tripId': tripId,
        if (driverUserId != null) 'driverUserId': driverUserId,
        'latitude': latitude,
        'longitude': longitude,
        'anySleepingChildFound': anySleepingChildFound,
        'sleepingChildrenCount': sleepingChildrenCount,
        'driverNotes': driverNotes ?? '',
        'verificationMethod': verificationMethod,
        if (clientTimestamp != null) 'clientTimestamp': clientTimestamp,
      };

  factory CompleteChildSafetyCheckRequest.fromJson(Map<String, dynamic> json) {
    return CompleteChildSafetyCheckRequest(
      checkLogId: (json['checkLogId'] as num).toInt(),
      tripId: (json['tripId'] as num).toInt(),
      driverUserId: (json['driverUserId'] as num?)?.toInt(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      anySleepingChildFound: json['anySleepingChildFound'] == true,
      sleepingChildrenCount: (json['sleepingChildrenCount'] as num?)?.toInt() ?? 0,
      driverNotes: json['driverNotes']?.toString(),
      verificationMethod: json['verificationMethod']?.toString() ?? 'AppSafetyButton',
      clientTimestamp: json['clientTimestamp']?.toString(),
    );
  }
}

/// Represents the response from `POST /childsafetycheck/complete`.
class CompleteChildSafetyCheckResponse {
  final int responseCode;
  final int? checkLogId;
  final String message;

  CompleteChildSafetyCheckResponse({
    required this.responseCode,
    this.checkLogId,
    required this.message,
  });

  factory CompleteChildSafetyCheckResponse.fromJson(Map<String, dynamic> json) {
    return CompleteChildSafetyCheckResponse(
      responseCode: (json['responseCode'] ?? json['ResponseCode'] ?? json['response_code'] as num?)?.toInt() ?? 0,
      checkLogId: (json['checkLogId'] ?? json['CheckLogId'] ?? json['check_log_id'] as num?)?.toInt(),
      message: (json['message'] ?? json['Message'] ?? '')?.toString() ?? '',
    );
  }

  bool get isSuccess => responseCode == 0;
}
