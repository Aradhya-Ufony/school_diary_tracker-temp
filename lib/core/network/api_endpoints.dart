abstract class ApiEndpoints {
  // Auth
  static const login = 'login';
  static const forgotPassword = 'user/ForgotPassword';

  // Routes
  static const route = 'route';

  // Trip lifecycle
  static const tripStart = 'trip/start';
  static const tripStop = 'trip/stop';
  static const tripLocation = 'trip/location';

  // Stops
  static const tripRoutesStops = 'trip/routes/multiple/stops';
  static const pickedFrom = 'AuthorizedGuardian/PickedFrom';
  static const droppedTo = 'AuthorizedGuardian/DroppedTo';
  static const cancelPickDrop = 'AuthorizedGuardian/CancelPickDrop';

  // children & guardians
  static const routeChildren = 'route/children';

  //drill endpoints
  static const drillLog = 'drill/log';
  static const drillApprove = 'drill/approve';
  static const drillRoster = 'drill/roster';
  static const drillDetail = 'drill'; // /drill/{drillLogId}
  static const drillBus = 'drill/bus';
  static const drillCompliance = 'drill/compliance';

  //dvir endpoints
  static const dvir = 'dvir'; //to subit pre- post- dvir
  static const dvirLatest = 'dvir/latest'; // fetching last dvir for pre
  static const dvirRoadside = 'dvir/roadside';
  static const vehicleState = 'vehicle/state';  //getting the state -ACTIVE, OUT_OF_SERVICE, CERTIFIED_PENDING_VERIFICATION
  static const dvirCertify = 'dvir/certify'; // append {defectID} to this endpoint to certify
  static const dvirSign = 'dvir/sign';
  // static const vehicleHistory = 'vehicle/history';
  // static const fleetStatus = 'fleet/status';

  // Incident Crash endpoints
  static const incidentCrashLog = 'incidentcrash/log';
  static const incidentCrash = 'incidentcrash'; // GET /api/incidentcrash/{id}
  static const incidentCrashUpdate = 'incidentcrash/update';
  static const incidentCrashBus = 'incidentcrash/bus';
  static const incidentCrashRoute = 'incidentcrash/route';

  // Child Left Behind / Safety Check endpoints
  static const childSafetyCheckActive = 'childsafetycheck/active';
  static const childSafetyCheckComplete = 'childsafetycheck/complete';

  // Driver Compliance / Drivers Corner endpoints
  static const driverComplianceAllDocuments = 'driver-compliance/allDriverDocuments';
}

