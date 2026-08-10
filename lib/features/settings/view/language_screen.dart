import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodel/locale_controller.dart';

/// Ported from `LanguageActivity.kt`. Same language list and order as the
/// original; Kannada's stored code is `kn` here (corrected — see
/// `LocaleController`'s doc comment) rather than the original's invalid
/// `ka`, but the visible label is unchanged.
class LanguageScreen extends ConsumerWidget {
  const LanguageScreen({super.key});

  static const _languages = [
    ('English', 'en'),
    ('Hindi', 'hi'),
    ('Kannada', 'kn'),
    ('Telugu', 'te'),
    ('Marathi', 'mr'),
    ('Gujarati', 'gu'),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(localeControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Language')),
      body: ListView(
        children: _languages.map((entry) {
          final (label, code) = entry;
          return RadioListTile<String>(
            title: Text(label),
            value: code,
            groupValue: currentLocale?.languageCode ?? 'en',
            onChanged: (value) {
              if (value != null) {
                ref.read(localeControllerProvider.notifier).setLocale(value);
              }
            },
          );
        }).toList(),
      ),
    );
  }
}
