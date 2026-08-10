/// Ported from `GuardiansModel.java`.
class Guardian {
  final int id;
  final String firstName;
  final String lastName;
  final String fullName;
  final String? relation;
  final String? imageUrl;

  const Guardian({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    this.relation,
    this.imageUrl,
  });

  factory Guardian.fromJson(Map<String, dynamic> json) {
    return Guardian(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      relation: json['relation'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );
  }
}
