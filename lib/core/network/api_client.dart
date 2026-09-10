import 'dart:developer' as dev;
import 'package:dio/dio.dart';
import 'package:school_diary_tracker/core/utils/app_constants.dart';
import '../services/crash_reporting_service.dart';
import '../storage/local_storage_service.dart';
import 'api_exception.dart';

/// Centralized Dio client that handles:
/// 1. Automatic Header injection (Authorization, user-id, application-id)
/// 2. Structured logging (URL, Screen, User, Route)
/// 3. Global error mapping and Crashlytics reporting
class ApiClient {
  final Dio _dio;
  final LocalStorageService _storage;
  final CrashReportingService _crashReporting;
  final String Function()? _getScreen;

  ApiClient({
    required LocalStorageService storage,
    required CrashReportingService crashReporting,
    String Function()? getScreen,
  })  : _storage = storage,
        _crashReporting = crashReporting,
        _getScreen = getScreen,
        _dio = Dio(
          BaseOptions(
            baseUrl: Constants.BASE_URL,
            contentType: Constants.CONTENT_TYPE_JSON,
            connectTimeout: const Duration(seconds: 60),
            receiveTimeout: const Duration(seconds: 60),
          ),
        ) {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // 1. Inject Auth Token
          final token = _storage.getString(StorageKeys.AUTH_TOKEN);
          if (token != null) {
            options.headers[Constants.AUTHORIZATION_HEADER] = token;
          }

          // 2. Extract User ID from stored JSON
          final userJson = _storage.getString(StorageKeys.CURRENT_USER);
          String? userId;
          if (userJson != null) {
            final idMatch = RegExp(r'"id"\s*:\s*(\d+)').firstMatch(userJson);
            if (idMatch != null) {
              userId = idMatch.group(1);
              options.headers[Constants.USER_ID_HEADER] = userId;
            }
          }

          // 3. Inject App ID
          options.headers[Constants.APPLICATION_ID_HEADER] = Constants.APPLICATION_ID;

          // 4. Resolve Route ID and Screen Context
          final routeId = _storage.getString(StorageKeys.ROUTE_ID);
          final screen = options.extra[Constants.SCREEN_EXTRA_KEY] as String? ?? _getScreen?.call() ?? 'Unknown Screen';

          // Attach screen to extra so it's available in the response/error phase
          options.extra[Constants.SCREEN_EXTRA_KEY] = screen;

          // 5. Format request data for logging
          String? dataStr;
          if (options.data != null) {
            if (options.data is FormData) {
              final formData = options.data as FormData;
              final fields = formData.fields.map((e) => '${e.key}: ${e.value}').join(', ');
              dataStr = 'FormData(fields: [$fields])';
            } else {
              dataStr = options.data.toString();
            }
          }

          // 6. LOG REQUEST: Full URI, Screen, IDs and Data
          dev.log(
            'API REQUEST: ${options.method} ${options.uri} | screen: $screen | user-id: $userId | route-id: $routeId${dataStr != null ? ' | data: $dataStr' : ''}',
            name: 'ApiClient',
          );

          handler.next(options);
        },
      ),
    );
  }

  Future<Response<dynamic>> get(
      String path, {
        Map<String, dynamic>? query,
        String? screen,
      }) {
    return _run(
          () => _dio.get(
        path,
        queryParameters: query,
        options: Options(extra: {Constants.SCREEN_EXTRA_KEY: screen}),
      ),
    );
  }

  Future<Response<dynamic>> post(
      String path, {
        Object? data,
        Map<String, dynamic>? query,
        Options? options,
        String? screen,
        void Function(int, int)? onSendProgress,
      }) {
    final mergedOptions = options ?? Options();
    mergedOptions.extra ??= {};
    if (screen != null) mergedOptions.extra![Constants.SCREEN_EXTRA_KEY] = screen;

    return _run(
          () => _dio.post(
            path,
            data: data,
            queryParameters: query,
            options: mergedOptions,
            onSendProgress: onSendProgress,
          ),
    );
  }

  Future<Response<dynamic>> put(
      String path, {
        Object? data,
        String? screen,
      }) {
    return _run(
          () => _dio.put(
        path,
        data: data,
        options: Options(extra: {Constants.SCREEN_EXTRA_KEY: screen}),
      ),
    );
  }

  Future<T> _run<T>(Future<T> Function() request) async {
    try {
      final response = await request();
      if (response is Response) {
        final screen = response.requestOptions.extra[Constants.SCREEN_EXTRA_KEY] as String? ?? 'Unknown';

        // LOG SUCCESS: Full URI and status
        dev.log(
          'API RESPONSE: ${response.statusCode} ${response.requestOptions.uri} | screen: $screen',
          name: 'ApiClient',
        );
      }
      return response;
    } on DioException catch (e) {
      final userJson = _storage.getString(StorageKeys.CURRENT_USER);
      final idMatch = userJson != null
          ? RegExp(r'"id"\s*:\s*(\d+)').firstMatch(userJson)
          : null;
      final userId = idMatch?.group(1);
      final routeId = _storage.getString(StorageKeys.ROUTE_ID);
      final screen = e.requestOptions.extra[Constants.SCREEN_EXTRA_KEY] as String? ?? 'Unknown';

      // LOG ERROR: Full URI, IDs, and Error Message
      dev.log(
        'API ERROR: ${e.response?.statusCode} ${e.requestOptions.uri} | screen: $screen | user-id: $userId | route-id: $routeId | message: ${e.message}',
        name: 'ApiClient',
        error: e,
      );

      // Report to Crashlytics
      await _crashReporting.logApiFailure(
        exception: e,
        stackTrace: e.stackTrace,
        endpoint: e.requestOptions.uri.toString(),
        responseCode: e.response?.statusCode,
        extraInfo: {
          Constants.TIMESTAMP_EXTRA_KEY: DateTime.now().toIso8601String(),
          if (userId != null)
            Constants.USER_ID_EXTRA_KEY: userId,
          Constants.SCREEN_EXTRA_KEY: screen,
          Constants.ROUTE_ID_EXTRA_KEY: routeId ?? 'none',
        },
        data: e.response?.data?.toString() ?? e.message ?? '',
      );
      print("SERVER ERROR RESPONSE DATA: ${e.response?.data}");
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

        final serverMessage = _extractServerMessage(e.response?.data);
        return UnknownApiException(serverMessage ?? Constants.UNKNOWN_ERROR);
    }
  }

  String? _extractServerMessage(dynamic data) {
    if (data == null) return null;
    if (data is Map<String, dynamic>) {
      final msg = data['message'] ?? data['error'] ?? data['msg'] ?? data['errorMessage'];
      if (msg != null && msg.toString().trim().isNotEmpty) {
        return msg.toString().trim();
      }
    } else if (data is String && data.trim().isNotEmpty) {
      final trimmed = data.trim();
      if (!trimmed.startsWith('<') &&
          !trimmed.contains('Exception') &&
          !trimmed.contains('validateStatus') &&
          trimmed.length < 200) {
        return trimmed;
      }
    }
    return null;
  }
}
