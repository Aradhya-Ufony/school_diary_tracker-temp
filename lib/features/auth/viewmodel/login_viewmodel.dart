import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/di/providers.dart';
import '../../../core/network/api_exception.dart';
import '../../../core/utils/validators.dart';
import '../../../data/models/country.dart';
import '../../../data/models/user_role.dart';
import '../../../data/repositories/auth_repository.dart';

enum LoginValidationError {
  emptyUsername,
  emptyPassword,
  invalidEmailOrPhone,
}

sealed class LoginState {
  const LoginState();
}

class LoginIdle extends LoginState {
  final LoginValidationError? validationError;
  const LoginIdle({this.validationError});
}

class LoginLoading extends LoginState {
  const LoginLoading();
}

class LoginSuccess extends LoginState {
  final UserRole user;
  const LoginSuccess(this.user);
}

class LoginFailure extends LoginState {
  final String? message;
  final bool isGenericError;

  const LoginFailure({this.message, this.isGenericError = false});
}

final selectedCountryProvider = StateProvider<Country>((ref) {
  return const Country(
    name: 'United States',
    code: 'US',
    dialCode: 1,
    displayDialCode: '+1',
  );
});

class LoginViewModel extends StateNotifier<LoginState> {
  final AuthRepository _authRepository;

  LoginViewModel(this._authRepository) : super(const LoginIdle());

  Future<void> login({
    required String username,
    required String password,
    required Country country,
  }) async {
    final trimmedUsername = username.trim();
    final trimmedPassword = password.trim();

    if (trimmedUsername.isEmpty) {
      state = const LoginIdle(validationError: LoginValidationError.emptyUsername);
      return;
    }
    if (trimmedPassword.isEmpty) {
      state = const LoginIdle(validationError: LoginValidationError.emptyPassword);
      return;
    }

    if (!Validators.isEmailOrValidPhone(trimmedUsername, countryCode: country.code)) {
      state = const LoginIdle(
        validationError: LoginValidationError.invalidEmailOrPhone,
      );
      return;
    }

    // Payload Normalization
    String finalUsername = trimmedUsername;
    if (!Validators.isEmail(trimmedUsername)) {
      if (trimmedUsername.startsWith('+')) {
        // Manual prefix entered, send as-is
        finalUsername = trimmedUsername;
      } else {
        // Numeric without prefix, concatenate selected country's dial code with phone digits
        final cleanedPhone = trimmedUsername.replaceAll(RegExp(r'[\-\s()+\x00-\x1F]'), '');
        finalUsername = '${country.displayDialCode}$cleanedPhone';
      }
    }

    state = const LoginLoading();
    try {
      final user = await _authRepository.login(
        username: finalUsername,
        password: trimmedPassword,
      );
      state = LoginSuccess(user);
    } on ApiException catch (e) {
      state = LoginFailure(message: e.message);
    } catch (_) {
      state = const LoginFailure(isGenericError: true);
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
