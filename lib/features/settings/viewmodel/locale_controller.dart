import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/di/providers.dart';
import '../../../core/storage/local_storage_service.dart';
import '../../../core/utils/app_constants.dart';

/// Ported from `LanguageManager.kt` + `LanguageWrapper.kt` — the original
/// used Android's `attachBaseContext()` locale-override pattern (a common
/// pre-per-app-language-API workaround), which required every single
/// Activity to inherit from a wrapper and the whole Activity to be
/// recreated on language change. Flutter's `MaterialApp.locale` is the
/// direct equivalent of what that hack was working around — no
/// per-screen wrapper needed, just one value read at the app root.
///
/// **Locale code correction, carried over from Step 1's analysis**: the
/// original used `"ka"` for Kannada, which isn't a valid ISO 639-1 code
/// (confirmed the `values-ka` folder's actual content is Kannada script).
/// This uses the correct `"kn"`.
class LocaleController extends StateNotifier<Locale> {
  final LocalStorageService _storage;

  LocaleController(this._storage) : super(_restore(_storage));

  static Locale parseLocale(String? code) {
    if (code == null || code.isEmpty) {
      return const Locale('en');
    }
    if (code.contains('_')) {
      final parts = code.split('_');
      if (parts.length >= 2) {
        if (parts[1].length == 4) {
          return Locale.fromSubtags(languageCode: parts[0], scriptCode: parts[1]);
        }
        return Locale(parts[0], parts[1]);
      }
    } else if (code.contains('-')) {
      final parts = code.split('-');
      if (parts.length >= 2) {
        if (parts[1].length == 4) {
          return Locale.fromSubtags(languageCode: parts[0], scriptCode: parts[1]);
        }
        return Locale(parts[0], parts[1]);
      }
    }
    return Locale(code);
  }

  static Locale _restore(LocalStorageService storage) {
    final code = storage.getString(StorageKeys.LOCALE_CODE);
    return parseLocale(code);
  }

  String get currentCode {
    return _storage.getString(StorageKeys.LOCALE_CODE) ?? 'en';
  }

  bool get hasSelectedLanguage {
    return _storage.getBool(StorageKeys.IS_LANGUAGE_SELECTED) ??
        (_storage.getString(StorageKeys.LOCALE_CODE) != null);
  }

  Future<void> setLocale(String languageCode) async {
    await _storage.setString(StorageKeys.LOCALE_CODE, languageCode);
    await _storage.setBool(StorageKeys.IS_LANGUAGE_SELECTED, true);
    state = parseLocale(languageCode);
  }
}

final localeControllerProvider =
    StateNotifierProvider<LocaleController, Locale>((ref) {
  return LocaleController(ref.watch(localStorageServiceProvider));
});
