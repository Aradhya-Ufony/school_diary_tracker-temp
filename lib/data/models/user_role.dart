/// Ported directly from `UserRole.kt` (already a clean Kotlin data class in
/// the original — straightforward 1:1 port, no restructuring needed).
class UserRole {
  final String firstName;
  final String fullName;
  final int id;
  final String instituteName;
  final String lastName;
  final String role;

  const UserRole({
    required this.firstName,
    required this.fullName,
    required this.id,
    required this.instituteName,
    required this.lastName,
    required this.role,
  });

  factory UserRole.fromJson(Map<String, dynamic> json) {
    return UserRole(
      firstName: json['firstName'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      id: (json['id'] as num).toInt(),
      instituteName: json['instituteName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      role: json['role'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'fullName': fullName,
        'id': id,
        'instituteName': instituteName,
        'lastName': lastName,
        'role': role,
      };

  /// Matches `LoginActivity`'s case-insensitive role check used to pick
  /// which user record from a multi-role account becomes the "current
  /// user" for this app.
//   bool get isAuthorized =>
//       role.equalsIgnoreCaseAny(const ['driver', 'caretaker', 'admin']);}
//
//
// extension on String {
//   bool equalsIgnoreCaseAny(List<String> options) =>
//       options.any((o) => o.toLowerCase() == toLowerCase());
}
