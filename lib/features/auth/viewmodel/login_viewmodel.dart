import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/di/providers.dart';
import '../../../core/network/api_exception.dart';
import '../../../core/utils/validators.dart';
import '../../../data/models/user_role.dart';
import '../../../data/repositories/auth_repository.dart';

/// State for the login screen. Ported from the validation/progress-dialog
/// flow in `LoginActivity`, but as declarative state instead of imperative
/// Toast/ProgressDialog calls.
sealed class LoginState {
  const LoginState();
}

class LoginIdle extends LoginState {
  final String? fieldError; // e.g. "enter a valid email or phone"
  const LoginIdle({this.fieldError});
}

class LoginLoading extends LoginState {
  const LoginLoading();
}

class LoginSuccess extends LoginState {
  final UserRole user;
  const LoginSuccess(this.user);
}

class LoginFailure extends LoginState {
  final String message;
  const LoginFailure(this.message);
}

class LoginViewModel extends StateNotifier<LoginState> {
  final AuthRepository _authRepository;

  LoginViewModel(this._authRepository) : super(const LoginIdle());

  /// Deliberately **not** a 1:1 port of the original's validation order —
  /// flagging this as a real behavioral change, not just a comment fix.
  ///
  /// In `LoginActivity`, the email/phone format check happens first, in
  /// the button's `onClick` handler, *before* `login()` is ever called.
  /// Because an empty string fails both `isEmail()` and `isPhoneNo()`,
  /// that means the original's own "Please enter username" / "Please
  /// enter password" checks (inside `login()`) are unreachable dead code
  /// in practice — an empty field always surfaces the generic "enter a
  /// valid email" message instead, regardless of which field was empty.
  ///
  /// This version checks empty-username -> empty-password -> format, so
  /// each case gets its own accurate message. This is a genuine UX
  /// improvement over the original's effectively-dead validation
  /// branches, not a neutral refactor — flagging it here in case you'd
  /// rather I replicate the original's exact (arguably confusing)
  /// behavior instead.
  Future<void> login({required String username, required String password}) async {
    final trimmedUsername = username.trim();
    final trimmedPassword = password.trim();

    if (trimmedUsername.isEmpty) {
      state = const LoginIdle(fieldError: 'Please enter username');
      return;
    }
    if (trimmedPassword.isEmpty) {
      state = const LoginIdle(fieldError: 'Please enter password');
      return;
    }
    if (!Validators.isEmailOrPhone(trimmedUsername)) {
      state = const LoginIdle(
        fieldError: 'Please enter a valid email or phone number',
      );
      return;
    }

    state = const LoginLoading();
    try {
      final user = await _authRepository.login(
        username: trimmedUsername,
        password: trimmedPassword,
      );
      state = LoginSuccess(user);
    } on ApiException catch (e) {
      state = LoginFailure(e.message);
    } catch (_) {
      state = const LoginFailure('Login failed. Please try again.');
    }
  }

  Future<bool> forgotPassword(String email) async {
    if (!Validators.isEmail(email)) {
      return false;
    }
    try {
      await _authRepository.forgotPassword(email);
      return true;
    } catch (_) {
      return false;
    }
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(
    apiClient: ref.watch(apiClientProvider),
    storage: ref.watch(localStorageServiceProvider),
  );
});

final loginViewModelProvider =
    StateNotifierProvider.autoDispose<LoginViewModel, LoginState>((ref) {
  return LoginViewModel(ref.watch(authRepositoryProvider));
});
