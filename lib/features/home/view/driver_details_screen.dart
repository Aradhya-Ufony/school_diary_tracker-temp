import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/driver_details_mock.dart';
import '../../auth/viewmodel/login_viewmodel.dart';
import '../../../l10n/generated/app_localizations.dart';

class DriverDetailsScreen extends ConsumerWidget {
  final bool hideAppBar;
  const DriverDetailsScreen({super.key, this.hideAppBar = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authRepositoryProvider).getCurrentUser();
    final l10n = AppLocalizations.of(context)!;

    final driverName = (user?.fullName != null && user!.fullName.trim().isNotEmpty)
        ? user.fullName
        : MockDriverDetails.demoDriver.name;
    final driverId = (user?.id != null)
        ? user!.id.toString()
        : MockDriverDetails.demoDriver.id;
    final mobileNo = MockDriverDetails.demoDriver.mobileNo;
    final licenseNo = MockDriverDetails.demoDriver.licenseNo;
    final licenseType = MockDriverDetails.demoDriver.licenseType;
    final cdlClass = MockDriverDetails.demoDriver.cdlClass;
    final issueDate = MockDriverDetails.demoDriver.issueDate;
    final expiryDate = MockDriverDetails.demoDriver.expiryDate;
    final dob = MockDriverDetails.demoDriver.dob;
    final endorsements = MockDriverDetails.demoDriver.endorsements;

    const primaryColor = AppColors.PRIMARY;

    return Scaffold(
      appBar: hideAppBar
          ? null
          : AppBar(
              title: Text(l10n.driverDetailsTitle),
              elevation: 0,
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
            ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Header Profile Banner
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          )
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/avatar_contact3x.png'),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      driverName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        l10n.driverDetailsId(driverId),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.phone, color: Colors.white70, size: 16),
                        const SizedBox(width: 6),
                        Text(
                          mobileNo,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Content Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // License credentials header
                  Row(
                    children: [
                      const Icon(Icons.badge, color: primaryColor, size: 22),
                      const SizedBox(width: 8),
                      Text(
                        l10n.driverDetailsLicenseTitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // License details card
                  Card(
                    elevation: 2,
                    shadowColor: Colors.black.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(color: Colors.grey.shade100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          _buildProfileRow(l10n.driverDetailsLicenseNoLabel, licenseNo),
                          const Divider(height: 20),
                          _buildProfileRow(l10n.driverDetailsLicenseTypeLabel, licenseType),
                          const Divider(height: 20),
                          _buildProfileRow(l10n.driverDetailsCdlClassLabel, cdlClass),
                          const Divider(height: 20),
                          _buildProfileRow(l10n.driverDetailsIssueDateLabel, issueDate),
                          const Divider(height: 20),
                          _buildProfileRow(l10n.driverDetailsExpiryDateLabel, expiryDate),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Endorsements Section
                  Row(
                    children: [
                      const Icon(Icons.verified, color: primaryColor, size: 22),
                      const SizedBox(width: 8),
                      Text(
                        l10n.driverDetailsEndorsementsTitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      _buildEndorsementChip(context, 'P', l10n.driverDetailsEndorsementPassenger, Colors.teal),
                      const SizedBox(width: 12),
                      _buildEndorsementChip(context, 'S', l10n.driverDetailsEndorsementSchoolBus, Colors.red, isMust: true),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Document view card
                  Row(
                    children: [
                      const Icon(Icons.description, color: primaryColor, size: 22),
                      const SizedBox(width: 8),
                      Text(
                        l10n.driverDetailsLicenseDocTitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  Card(
                    elevation: 2,
                    clipBehavior: Clip.antiAlias,
                    shadowColor: Colors.black.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(color: Colors.grey.shade200),
                    ),
                    child: InkWell(
                      onTap: () => _showDLDocumentPreview(
                        context,
                        driverName,
                        licenseNo,
                        expiryDate,
                        dob,
                        cdlClass,
                        endorsements,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Opacity(
                              opacity: 0.08,
                              child: Image.asset(
                                'assets/images/avatar_contact3x.png',
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 16,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    l10n.driverDetailsDrivingLicenseLabel,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueGrey,
                                      letterSpacing: 1.0,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    l10n.driverDetailsDrivingLicenseName(driverName),
                                    style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    l10n.driverDetailsDrivingLicenseNo(licenseNo),
                                    style: const TextStyle(fontSize: 11, color: Colors.black87),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.black.withOpacity(0.25),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.remove_red_eye, color: Colors.white, size: 32),
                                const SizedBox(height: 6),
                                Text(
                                  l10n.driverDetailsTapToView,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 16),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEndorsementChip(BuildContext context, String code, String label, Color color, {bool isMust = false}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withOpacity(0.08),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color, width: 1.5),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 14,
              backgroundColor: color,
              child: Text(
                code,
                style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(color: color, fontSize: 11, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (isMust)
                    const Text(
                      'S (must)',
                      style: TextStyle(color: Colors.red, fontSize: 9, fontWeight: FontWeight.bold),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDLDocumentPreview(
    BuildContext context,
    String name,
    String licenseNo,
    String expiryDate,
    String dob,
    String cdlClass,
    String endorsements,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        final l10n = AppLocalizations.of(context)!;
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.all(16),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F5F9),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.PRIMARY, width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  offset: const Offset(0, 10),
                )
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.security, color: AppColors.PRIMARY),
                        const SizedBox(width: 8),
                        Text(
                          l10n.driverDetailsDrivingLicenseLabel,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: AppColors.PRIMARY),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                const Divider(thickness: 2),
                const SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 90,
                      height: 110,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.person, size: 70, color: Colors.grey),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(l10n.driverDetailsPreviewLicenseNo(licenseNo), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.red)),
                          const SizedBox(height: 6),
                          Text(l10n.driverDetailsPreviewName(name), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                          const SizedBox(height: 4),
                          Text(l10n.driverDetailsPreviewDob(dob), style: const TextStyle(fontSize: 12)),
                          const SizedBox(height: 4),
                          Text(l10n.driverDetailsPreviewClass(cdlClass), style: const TextStyle(fontSize: 12)),
                          const SizedBox(height: 4),
                          Text(l10n.driverDetailsPreviewEndorse(endorsements), style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 4),
                          Text(l10n.driverDetailsPreviewExp(expiryDate), style: const TextStyle(fontSize: 12, color: Colors.blueGrey)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue, width: 2),
                          ),
                          child: const Center(
                            child: Icon(Icons.verified, color: Colors.blue, size: 26),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(l10n.driverDetailsOfficialSeal, style: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(fontFamily: 'Courier', fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const Divider(height: 6, thickness: 1),
                        Text(l10n.driverDetailsHolderSignature, style: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
      },
    );
  }
}
