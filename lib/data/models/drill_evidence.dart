enum EvidenceMediaType { photo, video }

/// Media attachment model supporting static backend media URLs & local offline files
class DrillEvidence {
  final int? id;
  final String? mediaUrl; // Backend static media URL (e.g. /static/drills/photo1.jpg)
  final String? localFilePath; // Sandboxed local path before upload
  final EvidenceMediaType mediaType;
  final DateTime createdAt; // Moment photo/video was clicked (EXIF/camera time)
  final DateTime? uploadedAt; // Moment evidence file was uploaded to backend
  final int? drillLogId;
  final String? approvalStatus;
  final String? fileName;
  final String? mimeType;

  const DrillEvidence({
    this.id,
    this.mediaUrl,
    this.localFilePath,
    required this.mediaType,
    required this.createdAt,
    this.uploadedAt,
    this.drillLogId,
    this.approvalStatus,
    this.fileName,
    this.mimeType,
  });

  /// Helper to resolve full URL for backend static media
  String resolveFullMediaUrl(String baseUrl) {
    if (mediaUrl == null) return '';
    if (mediaUrl!.startsWith('http://') || mediaUrl!.startsWith('https://')) {
      return mediaUrl!;
    }
    final cleanBase = baseUrl.endsWith('/') ? baseUrl.substring(0, baseUrl.length - 1) : baseUrl;
    final cleanPath = mediaUrl!.startsWith('/') ? mediaUrl! : '/$mediaUrl';
    return '$cleanBase$cleanPath';
  }

  factory DrillEvidence.fromJson(Map<String, dynamic> json) {
    final mediaTypeVal = json['mediaType'] ?? json['MediaType'];
    final typeStr = (mediaTypeVal as String? ?? 'photo').toLowerCase();
    
    final drillLogIdVal = json['drillLogId'] ?? json['DrillLogId'];
    final drillLogId = drillLogIdVal is int
        ? drillLogIdVal
        : int.tryParse(drillLogIdVal?.toString() ?? '');

    final idVal = json['id'] ?? 
                  json['Id'] ?? 
                  json['evidenceId'] ?? 
                  json['EvidenceId'];
    final parsedId = idVal is int 
        ? idVal 
        : int.tryParse(idVal?.toString() ?? '');

    final createdAtVal = json['createdAt'] ?? json['CreatedAt'];
    final uploadedAtVal = json['uploadedAt'] ?? json['UploadedAt'];

    return DrillEvidence(
      id: parsedId,
      mediaUrl: (json['mediaUrl'] ?? json['MediaUrl']) as String?,
      localFilePath: (json['localFilePath'] ?? json['LocalFilePath']) as String?,
      mediaType: typeStr == 'video' ? EvidenceMediaType.video : EvidenceMediaType.photo,
      createdAt: createdAtVal != null
          ? DateTime.tryParse(createdAtVal as String) ?? DateTime.now()
          : DateTime.now(),
      uploadedAt: uploadedAtVal != null
          ? DateTime.tryParse(uploadedAtVal as String)
          : null,
      drillLogId: drillLogId,
      approvalStatus: (json['approvalStatus'] ?? json['ApprovalStatus']) as String?,
      fileName: (json['fileName'] ?? json['FileName']) as String?,
      mimeType: (json['mimeType'] ?? json['MimeType']) as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'mediaUrl': mediaUrl,
        'localFilePath': localFilePath,
        'mediaType': mediaType.name,
        'createdAt': createdAt.toIso8601String(),
        'uploadedAt': uploadedAt?.toIso8601String(),
        'drillLogId': drillLogId,
        'approvalStatus': approvalStatus,
        'fileName': fileName,
        'mimeType': mimeType ?? (mediaType == EvidenceMediaType.video ? 'video/mp4' : 'image/jpeg'),
      };
}
