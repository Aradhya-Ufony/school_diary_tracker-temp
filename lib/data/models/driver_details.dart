class Driver{
  final int driverId;
  final String licenseType;
  final String licenseNumber;
  final String firstName;
  final String lastName;
  final String fullName;
  final DateTime licenseIssueDate;
  final DateTime licenseExpiryDate;
  final bool isBackgroundChecked;
  final String? imageUrl;

  const Driver({
    required this.driverId,
    required this.licenseType,
    required this.licenseNumber,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.licenseIssueDate,
    required this.licenseExpiryDate,
    required this.isBackgroundChecked,
    this.imageUrl
});

  factory Driver.fromJson(Map<String, dynamic> json) {
    return Driver(
        driverId: (json['driverId'] as num).toInt(),
        licenseType: json['licenseType'] as String? ?? '',
        licenseNumber: json['licenseNumber'] as String? ?? '',
        firstName: json['firstName'] as String? ?? '',
        lastName: json['lastName'] as String? ?? '',
        fullName: json['fullName'] as String? ?? '',
        licenseIssueDate: DateTime.parse(json['licenseIssueDate'] as String),
        licenseExpiryDate: DateTime.parse(json['licenseExpiryDate'] as String),
        isBackgroundChecked: json['isBackgroundChecked'] as bool? ?? false,
        imageUrl: json['imageUrl'] as String?
    );
  }

  Map<String, dynamic> toJson() => {
    'driverId': driverId,
    'licenseType': licenseType,
    'licenseNumber': licenseNumber,
    'firstName': firstName,
    'lastName': lastName,
    'fullName': fullName,
    'licenseIssueDate': licenseIssueDate.toIso8601String(),
    'licenseExpiryDate': licenseExpiryDate.toIso8601String(),
    'isBackgroundChecked': isBackgroundChecked,
    'imageUrl': imageUrl,
  };

}