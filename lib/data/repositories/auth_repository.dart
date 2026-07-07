import 'dart:convert';

import 'package:dio/dio.dart';

import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../../core/network/api_exception.dart';
import '../../core/storage/local_storage_service.dart';
import '../models/authorization_response.dart';
import '../models/user_role.dart';

/// Ported from `UserTask.LogInTask` / `UserTask.ForgotPasswordTask`
/// (networking) combined with the current-user selection logic that
/// originally lived inline in `LoginActivity.logInListener.onSuccess()`.
/// Consolidating that here — rather than leaving selection logic in a UI
/// callback — is a deliberate structural improvement for MVVM: the
/// ViewModel only orchestrates, it doesn't own business rules about which
/// user record "wins" on a multi-role account.
class AuthRepository {
  final ApiClient _apiClient;
  final LocalStorageService _storage;

  AuthRepository({
    required ApiClient apiClient,
    required LocalStorageService storage,
  })  : _apiClient = apiClient,
        _storage = storage;

  /// Returns the selected [UserRole] on success.
  ///
  /// Throws:
  /// - [UnauthorizedException] on bad credentials (original: `onUnauthorized()`
  ///   triggered by the login endpoint's failure-shaped 500 response —
  ///   ported faithfully below since that's the real API contract, not a
  ///   guess).
  /// - [UnknownApiException] if the account has no driver/careTaker role
  ///   (original: falls through to `msg_login_failed` when
  ///   `PreferenceManager.getCurrentUser()` is still null after the loop).
  Future<UserRole> login({
    required String username,
    required String password,
  }) async {
    // Confirmed backend quirk from `UserTask.LogInTask`: a failed login
    // doesn't come back as 401 — it's HTTP 500 with a response body
    // containing the word "failure". A generic 500 for an *actual* server
    // fault is a separate case. Overriding validateStatus here (just for
    // this call) to accept both 200 and 500 so we can inspect the body
    // ourselves, exactly like the original's switch statement did —
    // letting ApiClient's default error mapping handle this would
    // misclassify bad credentials as a generic "server error", which
    // isn't the message a user should see for a wrong password.
    final response = await _apiClient.post(
      ApiEndpoints.login,
      data: {'username': username, 'password': password},
      options: Options(validateStatus: (code) => code == 200 || code == 500),
    );

    if (response.statusCode == 500) {
      final body = response.data?.toString() ?? '';
      if (body.contains('failure')) {
        throw const UnauthorizedException();
      }
      throw const ServerException();
    }

    final json = response.data is String
        ? jsonDecode(response.data as String) as Map<String, dynamic>
        : response.data as Map<String, dynamic>;

    final auth = AuthorizationResponse.fromJson(json);

    final sessionId = auth.session.id;
    if (sessionId == null) {
      throw const UnauthorizedException();
    }

    // Matches the original's loop: first user whose role is
    // driver/careTaker (case-insensitive), first match wins.
    final selectedUser = auth.allUsers
        .where((u) => u.isDriverOrCareTaker)
        .cast<UserRole?>()
        .firstWhere((_) => true, orElse: () => null);

    if (selectedUser == null) {
      throw const UnknownApiException(
        'This account has no driver or caretaker role.',
      );
    }

    await _storage.setString(StorageKeys.authToken, 'Basic $sessionId');
    await _storage.setString(
      StorageKeys.currentUser,
      jsonEncode(selectedUser.toJson()),
    );

    return selectedUser;
  }

  /// Ported from `UserTask.ForgotPasswordTask`, which is a POST with a
  /// null body and the email appended to the URL as a query string
  /// (`Constants.FORGOT_PASSWORD_URL + email`, unencoded). Kept as a POST
  /// to match the real backend contract, but sent via Dio's
  /// `queryParameters` instead of raw string concatenation — that
  /// URL-encodes the email properly, avoiding a latent bug for addresses
  /// containing `+` or other reserved characters, without changing the
  /// HTTP method or endpoint the backend expects.
  Future<void> forgotPassword(String email) async {
    await _apiClient.post(
      ApiEndpoints.forgotPassword,
      query: {'email': email},
    );
  }

  /// Equivalent to `LoginActivity.startNavigation()`'s
  /// `PreferenceManager.getCurrentUser(context) != null` check.
  UserRole? getCurrentUser() {
    final json = _storage.getString(StorageKeys.currentUser);
    if (json == null) return null;
    return UserRole.fromJson(jsonDecode(json) as Map<String, dynamic>);
  }

  bool get isLoggedIn => getCurrentUser() != null;

  /// Equivalent to `PreferenceManager.logout()`.
  Future<void> logout() => _storage.clearAll();
}
