abstract class Validators {
  static final _emailRegex =
      RegExp(r'^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');

  static final _phoneRegex = RegExp(r'^\+?[0-9\-\s()]{6,}$');

  static bool isEmail(String text) => _emailRegex.hasMatch(text.trim());

  static bool isPhoneNo(String text) => _phoneRegex.hasMatch(text.trim());

  static bool isEmailOrPhone(String text) => isEmail(text) || isPhoneNo(text);

  static String currentTimeStamp() {
    final now = DateTime.now();
    String pad(int n) => n.toString().padLeft(2, '0');
    return '${now.year}-${pad(now.month)}-${pad(now.day)}'
        'T${pad(now.hour)}:${pad(now.minute)}:${pad(now.second)}';
  }
}
