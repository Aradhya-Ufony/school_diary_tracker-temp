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
class LocaleController extends StateNotifier<Locale?> {
  final LocalStorageService _storage;

  LocaleController(this._storage) : super(_restore(_storage));

  static Locale? _restore(LocalStorageService storage) {
    final code = storage.getString(StorageKeys.LOCALE_CODE);
    return code != null ? Locale(code) : null;
  }

  Future<void> setLocale(String languageCode) async {
    await _storage.setString(StorageKeys.LOCALE_CODE, languageCode);
    state = Locale(languageCode);
  }
}

final localeControllerProvider =
    StateNotifierProvider<LocaleController, Locale?>((ref) {
  return LocaleController(ref.watch(localStorageServiceProvider));
});
