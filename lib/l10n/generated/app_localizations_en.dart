import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get appTitleEuro => 'Euro Tracker';

  @override
  String get genericLoading => 'Loading...';

  @override
  String get genericError => 'Something went wrong';

  @override
  String get genericRetry => 'Retry';

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
}
