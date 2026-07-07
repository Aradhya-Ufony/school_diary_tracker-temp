import 'package:dio/dio.dart';

import '../flavors/flavor_config.dart';
import '../storage/local_storage_service.dart';
import 'api_exception.dart';

/// Flutter equivalent of `NetworkUtils.java`. The original hand-rolled
/// every request with `HttpURLConnection` + `AsyncTask` and manually set
/// four headers on every single call site. This centralizes that into one
/// Dio instance with an interceptor, so individual repository methods
/// (Step 4 onward) just call `apiClient.get(...)` / `.post(...)` without
/// repeating header logic.
///
/// Headers sent, matching the original exactly:
///   Content-Type: application/json      (Constants.CONTENT_TYPE_JSON)
///   Accept-Encoding: gzip                (Dio does this automatically;
///                                          no manual header needed)
///   Authorization: Basic <token>         (only if a token is stored —
///                                          see note in the class doc
///                                          above about the original
///                                          always attempting this even
///                                          pre-login)
///   application-id: <package name>       (BuildConfig.APPLICATION_ID)
///   user-id: <current user's id>         (only if a user is stored)
///
/// HTTPS is enforced structurally: [FlavorConfig.baseUrl] is always an
/// `https://` URL and nothing in this client ever falls back to plain
/// HTTP, matching your decision to drop cleartext entirely.
class ApiClient {
  final Dio _dio;
  final LocalStorageService _storage;

  ApiClient({
    required FlavorConfig flavorConfig,
    required LocalStorageService storage,
  })  : _storage = storage,
        _dio = Dio(
          BaseOptions(
            baseUrl: flavorConfig.baseUrl,
            contentType: 'application/json',
            connectTimeout: const Duration(seconds: 15),
            receiveTimeout: const Duration(seconds: 15),
          ),
        ) {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final token = _storage.getString(StorageKeys.authToken);
          if (token != null) {
            options.headers['Authorization'] = token;
          }

          final userJson = _storage.getString(StorageKeys.currentUser);
          if (userJson != null) {
            // Only the id is needed for the header; parsed lazily here
            // rather than keeping a duplicate cached UserRole object in
            // this layer — AuthRepository owns the actual User model.
            final idMatch = RegExp(r'"id"\s*:\s*(\d+)').firstMatch(userJson);
            if (idMatch != null) {
              options.headers['user-id'] = idMatch.group(1);
            }
          }

          // NOTE: hardcoded here rather than read from the real build
          // config, since that needs the `package_info_plus` package
          // (not added yet — deliberately keeping Step 2's dependency
          // list minimal). These two strings must stay in sync with the
          // applicationId values in android_flavor_config/app_build.gradle.snippet
          // and the iOS PRODUCT_BUNDLE_IDENTIFIER — flag if you'd like
          // package_info_plus added now instead to remove this
          // duplication.
          options.headers['application-id'] = flavorConfig.isSchoolDiary
              ? 'com.ufony.SDTracker'
              : 'com.ufony.schooldiarytracker';

          handler.next(options);
        },
      ),
    );
  }

  Future<Response<dynamic>> get(String path, {Map<String, dynamic>? query}) {
    return _run(() => _dio.get(path, queryParameters: query));
  }

  Future<Response<dynamic>> post(
    String path, {
    Object? data,
    Map<String, dynamic>? query,
    Options? options,
  }) {
    return _run(
      () => _dio.post(path, data: data, queryParameters: query, options: options),
    );
  }

  Future<Response<dynamic>> put(String path, {Object? data}) {
    return _run(() => _dio.put(path, data: data));
  }

  Future<T> _run<T>(Future<T> Function() request) async {
    try {
      return await request();
    } on DioException catch (e) {
      throw _mapError(e);
    }
  }

  ApiException _mapError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.connectionError:
        return const NetworkException();
      default:
        final statusCode = e.response?.statusCode;
        if (statusCode == 401) return const UnauthorizedException();
        if (statusCode == 500) return const ServerException();
        return UnknownApiException(e.message ?? 'Something went wrong');
    }
  }
}
