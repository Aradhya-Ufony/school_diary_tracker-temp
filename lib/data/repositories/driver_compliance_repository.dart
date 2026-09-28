import 'dart:convert';
import 'dart:developer' as dev;
import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../models/driver_document.dart';

class DriverComplianceRepository {
  final ApiClient _apiClient;

  DriverComplianceRepository({required ApiClient apiClient})
      : _apiClient = apiClient;

  /// Fetches all driver compliance documents for the specified [driverId],
  /// or for the currently logged-in driver session if [driverId] is omitted or null.
  Future<DriverComplianceResponse> getDriverComplianceDocuments({int? driverId}) async {
    final endpoint = driverId != null && driverId > 0
        ? '${ApiEndpoints.driverComplianceAllDocuments}/$driverId'
        : ApiEndpoints.driverComplianceAllDocuments;

    dev.log('Fetching driver compliance from $endpoint', name: 'DriverComplianceRepository');

    final response = await _apiClient.get(endpoint);
    final data = response.data is String ? jsonDecode(response.data) : response.data;

    dev.log('Driver compliance raw response: $data', name: 'DriverComplianceRepository');

    if (data is Map<String, dynamic>) {
      return DriverComplianceResponse.fromJson(data);
    }

    throw Exception('Unexpected server response format for driver compliance documents.');
  }
}
