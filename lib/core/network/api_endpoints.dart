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
  static const pickedFrom = 'AuthorizedGuardian/multiple/PickedFrom';
  static const droppedTo = 'AuthorizedGuardian/multiple/DroppedTo';
  static const cancelPickDrop = 'AuthorizedGuardian/multiple/CancelPickDrop';

  // children & guardians
  static const routeChildren = 'route/children';

  //drill endpoints
  static const drillLog = 'drill/log';
  static const drillApprove = 'drill/approve';
  static const drillRoster = 'drill/roster';
  static const drillDetail = 'drill'; // /drill/{drillLogId}
  static const drillBus = 'drill/bus';
  static const drillCompliance = 'drill/compliance';


}
