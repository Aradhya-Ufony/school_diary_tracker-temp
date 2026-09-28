import 'package:flutter/material.dart';

abstract final class Constants{

  static const String APP_NAME = 'Locato';
  static const String BASE_URL = 'https://staging.schooldiary.me/DrillTemp/api/';
  static const String APPLICATION_ID = 'com.ufony.SDTracker';

  static const String AUTHORIZATION_HEADER = 'Authorization';
  static const String USER_ID_HEADER = 'user-id';
  static const String APPLICATION_ID_HEADER = 'application-id';

  static const String LOGIN_BACKGROUND_IMAGE = 'assets/images/bg_splash_provided.png';
  static const String LOGIN_BOTTOM_IMAGE = 'assets/images/login_bottom_placeholder.png';
  static const String CONTACT_AVATAR = 'assets/images/avatar_contact3x.png';

  static const String SCREEN_EXTRA_KEY = 'screen';
  static const String ROUTE_ID_EXTRA_KEY = 'routeId';
  static const String TIMESTAMP_EXTRA_KEY = 'timeStamp';
  static const String USER_ID_EXTRA_KEY = 'userId';
  static const String USER_NAME_EXTRA_KEY = 'userName';
  static const String USER_EMAIL_EXTRA_KEY = 'userEmail';
  static const String USER_ROLE_EXTRA_KEY = 'userRole';
  static const String USER_IMAGE_EXTRA_KEY = 'userImage';
  static const String USER_PHONE_EXTRA_KEY = 'userPhone';
  static const String USER_ADDRESS_EXTRA_KEY = 'userAddress';
  static const String USER_DOB_EXTRA_KEY = 'userDOB';
  static const String USER_GENDER_EXTRA_KEY = 'userGender';

  static const String CONTENT_TYPE_FORM_DATA = 'multipart/form-data';
  static const String CONTENT_TYPE_JSON = 'application/json';

  //Error Messages
  static const String NETWORK_ERROR = 'Please check network connection.';
  static const String SERVER_ERROR = 'Error occurred at server, please try again.';
  static const String UNKNOWN_ERROR = 'Something went wrong';
  static const String UNAUTHORIZED_ERROR = 'Invalid Credentials';

  //App Routes
  static const String SPLASH_ROUTE = '/';
  static const String LOGIN_ROUTE = '/login';
  static const String HOME_ROUTE = '/home';
  static const String TRIP_MAP_ROUTE = '/trip/map';
  static const String STOPS_ROUTE = '/stops';
  static const String CHILDREN_ROUTE = '/children';
  static const String LANGUAGE_ROUTE = '/settings/language';
  static const String APP_INFO_ROUTE = '/settings/app-info';
  static const String DRILL_LIST_ROUTE = '/drills/list';
  static const String DRILL_TYPE_ROUTE = '/drills/select-type';
  static const String DRILL_ROSTER_MARKING_ROUTE = '/drills/marking';
  static const String DRILL_CHECKLIST_ROUTE = '/drills/checklist';
  static const String DRILL_EVIDENCE_ROUTE = '/drills/evidence';
  static const String DRILL_SUMMARY_ROUTE = '/drills/summary';
  static const String DRIVER_DETAILS_ROUTE = '/driver/details';
  static const String DVIR_POST_TRIP_ROUTE = '/dvir/post-trip';
  static const String DVIR_PRE_TRIP_ROUTE = '/dvir/pre-trip';
  static const String INCIDENT_INTAKE_ROUTE = '/incident/intake';
  static const String INCIDENT_FORM_ROUTE = '/incident/intake/form';
  static const String INCIDENT_DETAILS_ROUTE = '/incident/details/:id';
  static const String INCIDENT_HISTORY_ROUTE = '/incident/history';
  static const String CHILD_SAFETY_CHECK_ROUTE = '/child-safety-check';
  static const String DRIVERS_CORNER_ROUTE = '/drivers-corner';

  //Screen Names
  static const String SPLASH = 'Splash';
  static const String LOGIN = 'Login';
  static const String HOME = 'Home';
  static const String TRIP_MAP = 'Trip Map';
  static const String STOPS = 'Stops';
  static const String CHILDREN = 'Children';
  static const String LANGUAGE = 'Language';
  static const String APP_INFO = 'App Info';
  static const String DRILL = 'Drill';
  static const String DRILL_LIST = 'Drill List';
  static const String DRILL_TYPE = 'Select Drill Type';
  static const String DRILL_ROSTER_MARKING = 'Mark Attendance';
  static const String DRILL_CHECKLIST = 'Drill Check list';
  static const String DRILL_EVIDENCE = 'Drill Evidence';
  static const String DRILL_SUMMARY = 'Drill Summary';
  static const String DRIVER_DETAILS = 'Driver Details';
  static const String DVIR_POST_TRIP_SCREEN = 'Report Defects';
  static const String DVIR_PRE_TRIP_SCREEN = 'DVIR Pre-Trip';
  static const String INCIDENT_INTAKE = 'Incident Intake';
  static const String INCIDENT_FORM = 'Incident Form';
  static const String INCIDENT_DETAILS = 'Incident Details';
  static const String INCIDENT_HISTORY = 'Incident History';
  static const String CHILD_SAFETY_CHECK = 'Child Safety Check';
  static const String DRIVERS_CORNER = "Driver's Corner";


  //Crashlytics keys
  static const String CRASHLYTICS_API_ENDPOINT_KEY = 'api_endpoint';
  static const String CRASHLYTICS_RESPONSE_CODE_KEY = 'response_code';

  static const int LOCATION_REFRESH_INTERVAL_IN_SECONDS = 15;
  static const String BUS_ONGOING_MESSAGE = 'Bus is moving';
}

//Storage Keys
abstract class StorageKeys {

  static const String AUTH_TOKEN = 'auth_token';
  static const String CURRENT_USER = 'current_user';
  static const String ALL_ROUTES = 'all_routes';
  static const String ROUTE_ID = 'route_id';
  static const String TRIP_ID = 'trip_id';
  static const String LOCALE_CODE = 'locale_code';
  static const String IS_LANGUAGE_SELECTED = 'is_language_selected';
  static const String PENDING_SAFETY_CHECK = 'pending_safety_check';

}

class AppColors {
  /// colorPrimary (#FF03A9F4)
  static const PRIMARY = Color(0xFF03A8F4);

  /// colorPrimaryDark (#ff0171c9)
  static const PRIMARY_DARK = Color(0xFF0171C9);

  /// colorAccent (#FF00E5FF)
  static const ACCENT = Color(0xFF00E5FF);

  /// colorControlNormal (#FF78909C) — used for unfocused form controls.
  static const CONTROL_NORMAL = Color(0xFF78909C);

  static const ERROR = Color(0xFFF44336);
}
