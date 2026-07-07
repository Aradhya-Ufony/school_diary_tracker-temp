import 'package:shared_preferences/shared_preferences.dart';

/// Storage keys, ported 1:1 (by underlying meaning, not literal string) from
/// `PreferenceManager.java`'s constants. Only the keys with real,
/// currently-used call sites are included — confirmed by grepping the
/// Android source for every reference. The keys below were **not** ported
/// because nothing outside `PreferenceManager.java` itself ever reads or
/// writes them (dead leftovers, mostly from the old Zoment messaging app):
/// RECORD_SAMPLE_RATE, RECORD_BIT_RATE, RECORD_CHANEL, REG_ID,
/// IS_CONTACT_UPDATED, IS_FIRST_TIME_LOADING, IS_CONTACT_SYNC_COMPLETE,
/// HIGHLIGHT_NOTIFICATION_ID, IS_THREAD_READ, TIMEZONE_ID, BACKGROUND_TIME,
/// CHAT_WALLPAPER, PREVIOUS_DAY_TIME, and the hardcoded DEFAULT_AUTH
/// test-credential constant.
///
/// CORRECTION (Step 4/5/6): an earlier version of this comment also listed
/// `VEHICLE_LICENCE_NUMBER` as dead. That was wrong — a methodology bug in
/// my own grep (I excluded all matches inside `PreferenceManager.java`,
/// which hid its real getter/setter, spelled "License" not "Licence").
/// It's genuinely used by `LocationService`, and porting it surfaced a
/// real production bug — see `trip_repository.dart` / `RouteRepository`
/// for what that means and how it's fixed here rather than replicated.
abstract class StorageKeys {
  static const authToken = 'auth_token'; // was PreferenceManager.AUTHO
  static const currentUser = 'current_user'; // was PreferenceManager.USER

  // Added in Step 4 (routes list caching):
  static const allRoutes = 'all_routes'; // was PreferenceManager.All_ROUTES

  // Added in Step 5/6 (active trip state):
  static const routeId = 'route_id'; // was PreferenceManager.ROUTE_ID
  static const tripId = 'trip_id'; // was PreferenceManager.TRIP_ID

// Added in Step 9 (version-check nag timing):
// static const isForceUpdate = 'is_force_update';
// static const lastUpgradeShownTime = 'last_upgrade_shown_time';
}

/// Thin wrapper around SharedPreferences. Equivalent role to
/// `PreferenceManager.java`, but as an injectable, mockable service
/// (via Riverpod) rather than a class of static methods taking a
/// `Context` — this makes repositories that depend on it unit-testable
/// without an Android/Flutter runtime.
class LocalStorageService {
  final SharedPreferences _prefs;

  LocalStorageService(this._prefs);

  Future<void> setString(String key, String value) =>
      _prefs.setString(key, value);

  String? getString(String key) => _prefs.getString(key);

  Future<void> remove(String key) => _prefs.remove(key);

  /// Equivalent to `PreferenceManager.logout()`'s `editor.clear()`.
  Future<void> clearAll() => _prefs.clear();
}
