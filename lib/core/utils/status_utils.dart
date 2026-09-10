/// Utility functions for displaying status codes in clean, natural English.
class StatusUtils {
  /// Converts backend status strings (e.g. `OUT_OF_SERVICE`,
  /// `CERTIFIED_PENDING_VERIFICATION`, `PENDING_APPROVAL`) into human-readable English.
  static String formatStatus(String? status) {
    if (status == null || status.trim().isEmpty) {
      return 'Unknown';
    }

    final normalized = status.trim();
    final upper = normalized.toUpperCase();

    switch (upper) {
      case 'ACTIVE':
        return 'Active';
      case 'OUT_OF_SERVICE':
        return 'Out of Service';
      case 'CERTIFIED_PENDING_VERIFICATION':
        return 'Repairs Certified (Pending Verification)';
      case 'PENDING_VERIFICATION':
        return 'Pending Verification';
      case 'PENDING_APPROVAL':
      case 'PENDINGAPPROVAL':
        return 'Pending Approval';
      case 'APPROVED':
        return 'Approved';
      case 'REJECTED':
        return 'Rejected';
      case 'DEFECTS_REPORTED':
        return 'Defects Reported';
      case 'IN_REPAIR':
      case 'PENDING_REPAIR':
        return 'In Repair';
      case 'RESOLVED':
        return 'Resolved';
      case 'COMPLETED':
        return 'Completed';
      case 'CLOSED':
        return 'Closed';
      case 'OPEN':
        return 'Open';
      case 'IN_PROGRESS':
        return 'In Progress';
      default:
        // Convert SNAKE_CASE or camelCase to Title Case
        final withSpaces = normalized
            .replaceAll('_', ' ')
            .replaceAllMapped(
              RegExp(r'([a-z])([A-Z])'),
              (m) => '${m[1]} ${m[2]}',
            );
        return withSpaces
            .split(' ')
            .where((word) => word.isNotEmpty)
            .map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
            .join(' ');
    }
  }
}
