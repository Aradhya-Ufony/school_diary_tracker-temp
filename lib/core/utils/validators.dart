/// Ported from `IOUtils.java`'s `isEmail` / `isPhoneNo`. The original used
/// `android.util.Patterns.EMAIL_ADDRESS` / `.PHONE`, which are
/// Android-platform regexes with no direct Dart equivalent — these are
/// close, widely-used equivalents, not an exact byte-for-byte port (that's
/// not possible across platforms), but functionally equivalent for the
/// login form's purpose: distinguishing "looks like an email or phone
/// number" from "obviously not," matching the original's own loose intent
/// (the original layered an extra custom regex on top of
/// `Patterns.EMAIL_ADDRESS` too, which this mirrors with a single
/// equivalent pattern).
abstract class Validators {
  static final _emailRegex =
      RegExp(r'^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');

  // Deliberately permissive, matching Android's Patterns.PHONE's loose
  // intent (accepts spaces, dashes, parens, leading +) rather than
  // strictly validating a specific country format.
  static final _phoneRegex = RegExp(r'^\+?[0-9\-\s()]{6,}$');

  static bool isEmail(String text) => _emailRegex.hasMatch(text.trim());

  static bool isPhoneNo(String text) => _phoneRegex.hasMatch(text.trim());

  static bool isEmailOrPhone(String text) => isEmail(text) || isPhoneNo(text);
}
