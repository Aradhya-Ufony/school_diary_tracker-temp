class MockDriverDetails {
  final String name;
  final String id;
  final String mobileNo;
  final String licenseNo;
  final String licenseType;
  final String issueDate;
  final String expiryDate;
  final String cdlClass;
  final String dob;
  final String endorsements;
  final String? imageUrl;

  const MockDriverDetails({
    required this.name,
    required this.id,
    required this.mobileNo,
    required this.licenseNo,
    required this.licenseType,
    required this.issueDate,
    required this.expiryDate,
    required this.cdlClass,
    required this.dob,
    required this.endorsements,
    this.imageUrl,
  });

  static const MockDriverDetails demoDriver = MockDriverDetails(
    name: 'Alexander Thompson',
    id: 'TX-89240',
    mobileNo: '+1 (555) 019-8234',
    licenseNo: 'DL-TX8924055',
    licenseType: 'Commercial (CDL)',
    issueDate: '08/15/2021',
    expiryDate: '08/15/2029',
    cdlClass: 'Class B',
    dob: '11/24/1982',
    endorsements: 'P (Passenger), S (School Bus)',
    imageUrl: null, // Fallback to asset avatar
  );
}
