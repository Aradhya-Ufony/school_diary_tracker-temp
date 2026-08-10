/// Individual student evacuation status in the pre-drill checklist.
/// `wasOnBus` is server-authoritative and read-only.
class DrillChecklistItem {
  final int childId;
  final String childName;
  final String? photoUrl;
  final String? seatNumber;
  final bool wasOnBus;
  bool isEvacuated;
  DateTime? evacuationTime;
  String? notes;

  DrillChecklistItem({
    required this.childId,
    required this.childName,
    this.photoUrl,
    this.seatNumber,
    required this.wasOnBus,
    this.isEvacuated = false,
    this.evacuationTime,
    this.notes,
  });

  bool get isUnaccounted => wasOnBus && !isEvacuated;

  Map<String, dynamic> toJson() => {
        'childId': childId,
        'childName': childName,
        'photoUrl': photoUrl,
        'seatNumber': seatNumber,
        'wasOnBus': wasOnBus,
        'isEvacuated': isEvacuated,
        'evacuationTime': evacuationTime?.toIso8601String(),
        'notes': notes,
      };

  factory DrillChecklistItem.fromJson(Map<String, dynamic> json) {
    final childIdVal = json['childId'] ?? json['ChildId'];
    final parsedChildId = childIdVal is int
        ? childIdVal
        : int.tryParse(childIdVal?.toString() ?? '') ?? 0;

    final wasOnBusVal = json['wasOnBus'] ?? json['WasOnBus'];
    final parsedWasOnBus = wasOnBusVal is bool
        ? wasOnBusVal
        : (wasOnBusVal?.toString().toLowerCase() == 'true');

    final isEvacuatedVal = json['isEvacuated'] ?? json['IsEvacuated'];
    final parsedIsEvacuated = isEvacuatedVal is bool
        ? isEvacuatedVal
        : (isEvacuatedVal?.toString().toLowerCase() == 'true');

    final evacuationTimeVal = json['evacuationTime'] ?? json['EvacuationTime'];

    return DrillChecklistItem(
      childId: parsedChildId,
      childName: (json['childName'] ?? json['ChildName']) as String? ?? 'Student',
      photoUrl: (json['photoUrl'] ?? json['PhotoUrl']) as String?,
      seatNumber: (json['seatNumber'] ?? json['SeatNumber']) as String?,
      wasOnBus: parsedWasOnBus,
      isEvacuated: parsedIsEvacuated,
      evacuationTime: evacuationTimeVal != null
          ? DateTime.tryParse(evacuationTimeVal as String)
          : null,
      notes: (json['notes'] ?? json['Notes']) as String?,
    );
  }

  DrillChecklistItem copyWith({
    int? childId,
    String? childName,
    String? photoUrl,
    String? seatNumber,
    bool? wasOnBus,
    bool? isEvacuated,
    DateTime? evacuationTime,
    String? notes,
  }) {
    return DrillChecklistItem(
      childId: childId ?? this.childId,
      childName: childName ?? this.childName,
      photoUrl: photoUrl ?? this.photoUrl,
      seatNumber: seatNumber ?? this.seatNumber,
      wasOnBus: wasOnBus ?? this.wasOnBus,
      isEvacuated: isEvacuated ?? this.isEvacuated,
      evacuationTime: evacuationTime ?? this.evacuationTime,
      notes: notes ?? this.notes,
    );
  }
}
