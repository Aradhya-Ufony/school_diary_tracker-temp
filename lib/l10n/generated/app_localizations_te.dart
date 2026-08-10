import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get genericLoading => 'లోడ్ అవుతోంది, దయచేసి వేచి ఉండండి';

  @override
  String get genericError => 'క్షమించండి, మా సర్వర్‌లో లోపం సంభవించింది. దయచేసి మళ్ళీ ప్రయత్నించండి.';

  @override
  String get genericRetry => 'మళ్ళీ ప్రయత్నించండి';

  @override
  String get genericSuccess => 'Success';

  @override
  String get genericOk => 'Ok';

  @override
  String get loginEmailOrPhoneLabel => 'Email or phone number';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get loginButton => 'Login';

  @override
  String get loginForgotPassword => 'Forgot password?';

  @override
  String get loginErrorEnterUsername => 'Please enter username';

  @override
  String get loginErrorEnterPassword => 'Please enter password';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Please enter a valid email or phone number';

  @override
  String get loginErrorFailed => 'Login failed. Please try again.';

  @override
  String get forgotPasswordEmailLabel => 'Email';

  @override
  String get forgotPasswordSend => 'Send';

  @override
  String get forgotPasswordCancel => 'Cancel';

  @override
  String get forgotPasswordSuccess => 'If that email exists, a reset link has been sent.';

  @override
  String get forgotPasswordInvalidEmail => 'Please enter a valid email';

  @override
  String get homeTitle => 'Home';

  @override
  String homeHi(String name) {
    return 'Hi, $name';
  }

  @override
  String get homeSearchHint => 'Search routes';

  @override
  String get homeNoRoutes => 'No routes available';

  @override
  String get homeStart => 'Start';

  @override
  String get homeLogout => 'Logout';

  @override
  String get homeMenuLanguage => 'Language';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get languageTitle => 'Language';

  @override
  String get appInfoTitle => 'App Info';

  @override
  String get appInfoVersion => 'App Version';

  @override
  String get appInfoBuild => 'Build Number';

  @override
  String get appInfoPackage => 'Package';

  @override
  String get appInfoDevice => 'Device Model';

  @override
  String get appInfoOS => 'OS Version';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripConfirmCancel => 'Cancel';

  @override
  String get tripConfirmOk => 'OK';

  @override
  String get tripErrorLocationRequired => 'Location permission is required to start a trip.';

  @override
  String get stopsUndoTooltip => 'Undo pick/drop';

  @override
  String stopsSubmitCount(int count) {
    return 'Submit ($count)';
  }

  @override
  String stopsUndoCount(int count) {
    return 'Undo ($count)';
  }

  @override
  String get stopsCancelledSuccess => 'Cancelled successfully';

  @override
  String get stopsSubmittedSuccess => 'Submitted successfully';

  @override
  String get stopsGenericError => 'Something went wrong. Please try again.';

  @override
  String get stopsDefaultLabel => 'Stop';

  @override
  String stopsSummary(int selected, int done, int total, String status) {
    return '$selected selected · $done/$total $status';
  }

  @override
  String get stopsStatusDone => 'done';

  @override
  String get stopsStatusComplete => 'complete';

  @override
  String get stopsTypePick => 'Pick';

  @override
  String get stopsTypeDrop => 'Drop';

  @override
  String get stopsActionUndo => 'Undo';

  @override
  String childrenTitle(String routeName) {
    return 'Children — $routeName';
  }

  @override
  String get childrenStatusPicked => 'Picked';

  @override
  String get childrenStatusDropped => 'Dropped';

  @override
  String get childrenStatusPending => 'Pending';

  @override
  String get childrenActionGuardians => 'Guardians';

  @override
  String get childrenNoGuardians => 'No authorized guardians on file for this child.';

  @override
  String childrenGuardiansFor(String name) {
    return 'Authorized guardians for $name';
  }

  @override
  String get mapStopsTooltip => 'Stops';

  @override
  String get mapChildrenTooltip => 'Children & guardians';

  @override
  String get mapWaitingGps => 'Waiting for GPS...';

  @override
  String mapUpdatedAgo(int seconds) {
    return 'Updated ${seconds}s ago';
  }

  @override
  String get mapConfirmTitle => 'Confirm';

  @override
  String get mapConfirmMessage => 'Do you really want to close the trip?';

  @override
  String get mapNo => 'No';

  @override
  String get mapYes => 'Yes';

  @override
  String get mapStopping => 'Stopping...';

  @override
  String get mapStop => 'Stop';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapReconnectMessage => 'Location update failing frequently, Please check your internet.';

  @override
  String get mapCurrentPosition => 'Current Position';

  @override
  String get splashDriverApp => 'Driver App';
}
