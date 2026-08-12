abstract class Validators {
  static final _emailRegex =
      RegExp(r'^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');

  static final _phoneRegex = RegExp(r'^\+?[0-9\-\s()]{6,}$');

  static bool isEmail(String text) => _emailRegex.hasMatch(text.trim());

  static bool isPhoneNo(String text) => _phoneRegex.hasMatch(text.trim());

  static bool isValidPhoneForCountry(String text, {required String countryCode}) {
    final cleaned = text.replaceAll(RegExp(r'[\-\s()+\x00-\x1F]'), '').trim();
    switch (countryCode.toUpperCase()) {
      case 'US':
      case 'CA':
      case 'IN':
        return cleaned.length == 10 && RegExp(r'^[0-9]+$').hasMatch(cleaned);
      case 'IL':
        return (cleaned.length == 9 || cleaned.length == 10) && RegExp(r'^[0-9]+$').hasMatch(cleaned);
      default:
        return cleaned.length >= 6 && cleaned.length <= 15 && RegExp(r'^[0-9]+$').hasMatch(cleaned);
    }
  }

  static bool isEmailOrPhone(String text) => isEmail(text) || isPhoneNo(text);

  static bool isEmailOrValidPhone(String text, {required String countryCode}) {
    if (isEmail(text)) return true;
    // If it has manual prefix "+", it might contain the country code as well, so we can clean and check standard bounds.
    if (text.trim().startsWith('+')) {
      final cleaned = text.replaceAll(RegExp(r'[\-\s()+\x00-\x1F]'), '').trim();
      return cleaned.length >= 7 && cleaned.length <= 15 && RegExp(r'^[0-9]+$').hasMatch(cleaned);
    }
    return isValidPhoneForCountry(text, countryCode: countryCode);
  }

  static String currentTimeStamp() {
    final now = DateTime.now();
    String pad(int n) => n.toString().padLeft(2, '0');
    return '${now.year}-${pad(now.month)}-${pad(now.day)}'
        'T${pad(now.hour)}:${pad(now.minute)}:${pad(now.second)}';
  }
}
