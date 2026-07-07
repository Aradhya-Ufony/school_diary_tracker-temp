/// Ported from `ErrorMessages.java`. The original used these as static
/// message strings thrown as a plain `Exception` subclass; here they're
/// proper typed exceptions so callers (ViewModels) can branch on the kind
/// of failure rather than string-matching a message.
sealed class ApiException implements Exception {
  final String message;
  const ApiException(this.message);

  @override
  String toString() => message;
}

/// No connectivity / DNS failure / timeout — equivalent to the original's
/// `UnknownHostException` / `SocketTimeoutException` / `ConnectException`
/// catch blocks, all of which returned `MESSAGE_NETWORK`.
class NetworkException extends ApiException {
  const NetworkException()
      : super('Please check network connection.');
}

/// HTTP 401 — equivalent to `onUnauthorized()` callbacks throughout the
/// original listeners.
class UnauthorizedException extends ApiException {
  const UnauthorizedException() : super('Session expired. Please log in again.');
}

/// HTTP 500 — equivalent to `MESSAGE_INTERNAL_SERVER_ERROR`.
class ServerException extends ApiException {
  const ServerException([String? detail])
      : super(detail ?? 'Error occurred at server, please try again.');
}

/// Any other non-2xx response, or a response body that failed to parse.
class UnknownApiException extends ApiException {
  const UnknownApiException([String message = 'Something went wrong'])
      : super(message);
}
