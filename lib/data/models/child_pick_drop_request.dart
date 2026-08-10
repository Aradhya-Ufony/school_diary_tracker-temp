/// Ported from `ChildPickDropRequestPostModel.java`. Field name kept as
/// `childId` (a list, despite the singular name) to match the original's
/// exact JSON key — the backend contract, not something to rename to
/// `childIds` for clarity, since the server expects this literal key.
class ChildPickDropRequest {
  final int routeId;
  final List<int> childId;
  final String timeStamp;

  const ChildPickDropRequest({
    required this.routeId,
    required this.childId,
    required this.timeStamp,
  });

  Map<String, dynamic> toJson() => {
        'routeId': routeId,
        'childId': childId,
        'timeStamp': timeStamp,
      };
}
