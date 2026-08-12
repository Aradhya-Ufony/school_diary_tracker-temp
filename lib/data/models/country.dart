class Country {
  final String name;
  final String code;
  final int dialCode;
  final String displayDialCode;

  const Country({
    required this.name,
    required this.code,
    required this.dialCode,
    required this.displayDialCode,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name'] as String,
      code: json['code'] as String,
      dialCode: json['dialCode'] as int,
      displayDialCode: json['displayDialCode'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'code': code,
      'dialCode': dialCode,
      'displayDialCode': displayDialCode,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Country &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          code == other.code &&
          dialCode == other.dialCode &&
          displayDialCode == other.displayDialCode;

  @override
  int get hashCode =>
      name.hashCode ^
      code.hashCode ^
      dialCode.hashCode ^
      displayDialCode.hashCode;
}
