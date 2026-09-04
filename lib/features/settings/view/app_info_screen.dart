import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../l10n/generated/app_localizations.dart';

/// Ported from `AppInfoActivity.java`.
class AppInfoScreen extends StatefulWidget {
  const AppInfoScreen({super.key});

  @override
  State<AppInfoScreen> createState() => _AppInfoScreenState();
}

class _AppInfoScreenState extends State<AppInfoScreen> {
  String? _appVersion;
  String? _deviceModel;
  String? _osVersion;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final deviceInfoPlugin = DeviceInfoPlugin();

    String model = 'Unknown';
    String osVersion = 'Unknown';

    try {
      if (Theme.of(context).platform == TargetPlatform.android) {
        final info = await deviceInfoPlugin.androidInfo;
        model = info.model;
        osVersion = 'Android ${info.version.release}';
      } else if (Theme.of(context).platform == TargetPlatform.iOS) {
        final info = await deviceInfoPlugin.iosInfo;
        model = info.utsname.machine;
        osVersion = 'iOS ${info.systemVersion}';
      }
    } catch (_) {
      // Non-fatal.
    }

    if (!mounted) return;
    setState(() {
      _appVersion = packageInfo.version;
      _deviceModel = model;
      _osVersion = osVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.appInfoTitle)),
      body: _appVersion == null
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                _InfoTile(label: l10n.appInfoVersion, value: _appVersion!),
                _InfoTile(label: l10n.appInfoDevice, value: _deviceModel!),
                _InfoTile(label: l10n.appInfoOS, value: _osVersion!),
              ],
            ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String label;
  final String value;

  const _InfoTile({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(label), subtitle: Text(value));
  }
}
