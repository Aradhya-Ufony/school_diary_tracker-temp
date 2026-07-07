/// Endpoint paths, ported from the Android project's `Constants.java`.
///
/// Only endpoints actually referenced by working code are listed —
/// `Constants.java` in the original project contains a much longer list of
/// dead endpoint strings left over from the "Zoment" messaging app
/// (contacts, chat threads, groups, media upload, etc.) that this bus
/// tracker never calls. Those are intentionally not carried forward. As
/// each later migration step needs a new endpoint, it's added here with a
/// comment noting which Android class it came from.
abstract class ApiEndpoints {
  // --- Auth (Step 2) ---
  static const login = 'login';
  static const forgotPassword = 'user/ForgotPassword';

  // --- Routes (Step 4) ---
  static const route = 'route';

  // --- Trip lifecycle (Step 5/6) ---
  static const tripStart = 'trip/start';
  static const tripStop = 'trip/stop';
  static const tripLocation = 'trip/location';

  // --- Added in Step 7 (stops) ---
  // static const tripRoutesStops = 'trip/routes/multiple/stops';
  // static const routeChildren = 'route/children'; // + /{routeId}
  // static const pickedFrom = 'AuthorizedGuardian/multiple/PickedFrom';
  // static const droppedTo = 'AuthorizedGuardian/multiple/DroppedTo';
  // static const cancelPickDrop = 'AuthorizedGuardian/multiple/CancelPickDrop';

  // --- Added in Step 9 (version check) ---
  // static const version = 'version';
}
