class DriverComplianceResponse {
  final int? driverId;
  final String? driverNumber;
  final String? driverName;
  final int? schoolBranchId;
  final String? branchName;
  final bool isCdl;
  final String? overallStatus;
  final List<DriverDocument> documents;

  DriverComplianceResponse({
    this.driverId,
    this.driverNumber,
    this.driverName,
    this.schoolBranchId,
    this.branchName,
    this.isCdl = false,
    this.overallStatus,
    this.documents = const [],
  });

  factory DriverComplianceResponse.fromJson(Map<String, dynamic> json) {
    return DriverComplianceResponse(
      driverId: json['driverId'] as int?,
      driverNumber: json['driverNumber'] as String?,
      driverName: json['driverName'] as String?,
      schoolBranchId: json['schoolBranchId'] as int?,
      branchName: json['branchName'] as String?,
      isCdl: json['isCdl'] as bool? ?? false,
      overallStatus: json['overallStatus'] as String?,
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => DriverDocument.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'driverId': driverId,
      'driverNumber': driverNumber,
      'driverName': driverName,
      'schoolBranchId': schoolBranchId,
      'branchName': branchName,
      'isCdl': isCdl,
      'overallStatus': overallStatus,
      'documents': documents.map((e) => e.toJson()).toList(),
    };
  }
}

class DriverDocument {
  final String? documentType;
  final String title;
  final String? fileName;
  final String? fileUrl;
  final String? mimeType;
  final bool hasFile;
  final bool isCompliant;
  final String? status;
  final String? issueDate;
  final String? expirationDate;
  final String? certificateNumber;
  final String? issuingAuthority;
  final String? details;

  DriverDocument({
    this.documentType,
    required this.title,
    this.fileName,
    this.fileUrl,
    this.mimeType,
    this.hasFile = false,
    this.isCompliant = false,
    this.status,
    this.issueDate,
    this.expirationDate,
    this.certificateNumber,
    this.issuingAuthority,
    this.details,
  });

  bool get isPdf =>
      (mimeType != null && mimeType!.toLowerCase().contains('pdf')) ||
      (fileName != null && fileName!.toLowerCase().endsWith('.pdf')) ||
      (fileUrl != null && fileUrl!.toLowerCase().contains('.pdf'));

  bool get isImage =>
      (mimeType != null && mimeType!.toLowerCase().contains('image')) ||
      (fileName != null &&
          (fileName!.toLowerCase().endsWith('.jpg') ||
              fileName!.toLowerCase().endsWith('.jpeg') ||
              fileName!.toLowerCase().endsWith('.png') ||
              fileName!.toLowerCase().endsWith('.webp'))) ||
      (fileUrl != null &&
          (fileUrl!.toLowerCase().contains('.jpg') ||
              fileUrl!.toLowerCase().contains('.jpeg') ||
              fileUrl!.toLowerCase().contains('.png') ||
              fileUrl!.toLowerCase().contains('.webp')));

  factory DriverDocument.fromJson(Map<String, dynamic> json) {
    return DriverDocument(
      documentType: json['documentType'] as String?,
      title: json['title'] as String? ?? 'Untitled Document',
      fileName: json['fileName'] as String?,
      fileUrl: json['fileUrl'] as String?,
      mimeType: json['mimeType'] as String?,
      hasFile: json['hasFile'] as bool? ?? false,
      isCompliant: json['isCompliant'] as bool? ?? false,
      status: json['status'] as String?,
      issueDate: json['issueDate'] as String?,
      expirationDate: json['expirationDate'] as String?,
      certificateNumber: json['certificateNumber'] as String?,
      issuingAuthority: json['issuingAuthority'] as String?,
      details: json['details'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'documentType': documentType,
      'title': title,
      'fileName': fileName,
      'fileUrl': fileUrl,
      'mimeType': mimeType,
      'hasFile': hasFile,
      'isCompliant': isCompliant,
      'status': status,
      'issueDate': issueDate,
      'expirationDate': expirationDate,
      'certificateNumber': certificateNumber,
      'issuingAuthority': issuingAuthority,
      'details': details,
    };
  }
}
