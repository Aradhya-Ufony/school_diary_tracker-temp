import 'user_role.dart';

/// Ported from `Authorization.java` — the `login` endpoint's response
/// shape. Field names kept identical to the original JSON contract
/// (`session.id`, `allUsers`, etc.) since the backend team owns that
/// contract and nothing here should silently diverge from it.
class AuthorizationResponse {
  final String? status;
  final AuthSession session;
  final String? role;
  final List<UserRole> allUsers;

  const AuthorizationResponse({
    required this.status,
    required this.session,
    required this.role,
    required this.allUsers,
  });

  factory AuthorizationResponse.fromJson(Map<String, dynamic> json) {
    return AuthorizationResponse(
      status: json['status'] as String?,
      session: AuthSession.fromJson(
        json['session'] as Map<String, dynamic>? ?? const {},
      ),
      role: json['role'] as String?,
      allUsers: (json['allUsers'] as List<dynamic>? ?? const [])
          .map((e) => UserRole.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class AuthSession {
  final String? id;
  final String? lastAccessTime;

  const AuthSession({required this.id, required this.lastAccessTime});

  factory AuthSession.fromJson(Map<String, dynamic> json) {
    return AuthSession(
      id: json['id'] as String?,
      lastAccessTime: json['lastAccessTime'] as String?,
    );
  }
}
