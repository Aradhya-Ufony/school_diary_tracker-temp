/// Enum matching backend `DrillResponseCode` from DrillController.cs
enum DrillResponseCode {
  success,
  failure,
  routeNotFound,
  userNotInBranch,
  childNotOnRoute,
  drillLogNotFound,
  alreadyApproved,
  dataValidationError;

  static DrillResponseCode fromString(dynamic code) {
    if (code == null) return DrillResponseCode.success;
    if (code is int) {
      if (code == 0) return DrillResponseCode.success;
      if (code == 1) return DrillResponseCode.failure;
      if (code >= 0 && code < DrillResponseCode.values.length) {
        return DrillResponseCode.values[code];
      }
      return DrillResponseCode.failure;
    }
    final codeStr = code.toString().trim().toLowerCase();
    final parsedInt = int.tryParse(codeStr);
    if (parsedInt != null) {
      if (parsedInt == 0) return DrillResponseCode.success;
      if (parsedInt == 1) return DrillResponseCode.failure;
      if (parsedInt >= 0 && parsedInt < DrillResponseCode.values.length) {
        return DrillResponseCode.values[parsedInt];
      }
      return DrillResponseCode.failure;
    }
    return DrillResponseCode.values.firstWhere(
      (e) => e.name.toLowerCase() == codeStr,
      orElse: () => DrillResponseCode.failure,
    );
  }
}
