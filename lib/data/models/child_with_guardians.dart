import 'guardian.dart';

/// Ported from `ChildrenModel.java` — but only the fields relevant to
/// this restored feature (see `ChildrenRepository`'s doc comment for why
/// it's "restored" rather than a straight port). The original also had
/// `GradeModel`, `ParentModel`, `inRoute`/`outRoute` (`Route`),
/// `enrollmentNumber`, `externalReferenceStatus` — none of those have any
/// reachable UI consumer anywhere in the original codebase either (they
/// belonged to the same dead `ChildrenTabActivity` cluster), so they're
/// left out here rather than modeled for no purpose. Add them back if a
/// future screen actually needs them.
class ChildWithGuardians {
  final int id;
  final String firstName;
  final String lastName;
  final String fullName;
  final String? imageUrl;
  final bool isDropped;
  final bool isPicked;
  final List<Guardian> guardians;

  const ChildWithGuardians({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    this.imageUrl,
    required this.isDropped,
    required this.isPicked,
    required this.guardians,
  });

  factory ChildWithGuardians.fromJson(Map<String, dynamic> json) {
    return ChildWithGuardians(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      imageUrl: json['imageUrl'] as String?,
      isDropped: json['isDropped'] as bool? ?? false,
      isPicked: json['isPicked'] as bool? ?? false,
      guardians: (json['guardians'] as List<dynamic>? ?? const [])
          .map((e) => Guardian.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
