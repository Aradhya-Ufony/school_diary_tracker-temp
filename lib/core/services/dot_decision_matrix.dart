class DotDecisionMatrix {
  /// Evaluates testing requirements under 49 CFR 382.303.
  /// 
  /// DOT Drug & Alcohol testing is required if:
  /// 1. There was a fatality.
  /// 2. The driver was issued a citation for a moving traffic violation AND:
  ///    - Any vehicle received disabling damage requiring it to be towed.
  ///    - OR any person received bodily injury requiring immediate medical treatment away from the scene.
  static bool isTestingRequired({
    required bool hasFatalities,
    required bool wasCitationIssued,
    required bool isVehicleTowed,
    required bool hasInjuriesRequiringMedicalTreatment,
  }) {
    if (hasFatalities) {
      return true;
    }
    if (wasCitationIssued && (isVehicleTowed || hasInjuriesRequiringMedicalTreatment)) {
      return true;
    }
    return false;
  }

  /// Detailed textual regulatory explanation basis.
  static String getRegulatoryBasis({
    required bool hasFatalities,
    required bool wasCitationIssued,
    required bool isVehicleTowed,
    required bool hasInjuriesRequiringMedicalTreatment,
  }) {
    if (hasFatalities) {
      return '49 CFR 382.303(a)(1) — Testing required for any crash involving a fatality.';
    }
    if (wasCitationIssued) {
      if (isVehicleTowed && hasInjuriesRequiringMedicalTreatment) {
        return '49 CFR 382.303(a)(2) — Testing required for crash involving bodily injury with treatment away from scene AND disabling damage requiring vehicle to be towed, where a citation was issued to the driver.';
      }
      if (isVehicleTowed) {
        return '49 CFR 382.303(a)(2) — Testing required for crash involving disabling damage requiring vehicle to be towed, where a citation was issued to the driver.';
      }
      if (hasInjuriesRequiringMedicalTreatment) {
        return '49 CFR 382.303(a)(2) — Testing required for crash involving bodily injury requiring treatment away from scene, where a citation was issued to the driver.';
      }
    }
    return '49 CFR 382.303 — Post-crash testing not required based on the crash details provided.';
  }
}
