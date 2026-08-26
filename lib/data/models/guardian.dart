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
    final rawId = json['id'];
    int parsedId = 0;
    if (rawId is num) {
      parsedId = rawId.toInt();
    } else if (rawId is String) {
      parsedId = int.tryParse(rawId) ?? 0;
    }

    return Guardian(
      id: parsedId,
      firstName: json['firstName']?.toString() ?? '',
      lastName: json['lastName']?.toString() ?? '',
      fullName: json['fullName']?.toString() ?? '',
      relation: json['relation']?.toString(),
      imageUrl: json['imageUrl']?.toString(),
    );
  }
}
