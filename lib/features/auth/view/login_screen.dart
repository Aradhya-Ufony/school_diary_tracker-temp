import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/di/providers.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/country.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../viewmodel/login_viewmodel.dart';
import 'country_picker_sheet.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _showPrefix = false;

  @override
  void initState() {
    super.initState();
    _usernameController.addListener(_onUsernameChanged);
  }

  @override
  void dispose() {
    _usernameController.removeListener(_onUsernameChanged);
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onUsernameChanged() {
    final text = _usernameController.text.trim();
    final isNumeric = text.isNotEmpty && RegExp(r'^[0-9]+$').hasMatch(text);
    final shouldShow = isNumeric && !text.startsWith('+');
    if (shouldShow != _showPrefix) {
      setState(() {
        _showPrefix = shouldShow;
      });
    }
  }

  String _countryCodeToEmoji(String countryCode) {
    if (countryCode.length != 2) return '🌐';
    final int firstLetter = countryCode.toUpperCase().codeUnitAt(0) - 0x41 + 0x1F1E6;
    final int secondLetter = countryCode.toUpperCase().codeUnitAt(1) - 0x41 + 0x1F1E6;
    return String.fromCharCode(firstLetter) + String.fromCharCode(secondLetter);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final loginState = ref.watch(loginViewModelProvider);
    final selectedCountry = ref.watch(selectedCountryProvider);

    ref.listen<LoginState>(loginViewModelProvider, (previous, next) async {
      if (next is LoginSuccess) {
        final locationService = ref.read(locationTrackingServiceProvider);
        await locationService.requestPermissions();
        if (context.mounted) {
          context.go(Constants.HOME_ROUTE);
        }
      }
      else if (next is LoginFailure) {
        final message = next.isGenericError
            ? l10n.loginErrorFailed
            : (next.message ?? l10n.genericError);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        );
      }
    });

    final isLoading = loginState is LoginLoading;
    String? fieldError;
    if (loginState is LoginIdle && loginState.validationError != null) {
      switch (loginState.validationError!) {
        case LoginValidationError.emptyUsername:
          fieldError = l10n.loginErrorEnterUsername;
        case LoginValidationError.emptyPassword:
          fieldError = l10n.loginErrorEnterPassword;
        case LoginValidationError.invalidEmailOrPhone:
          fieldError = l10n.loginErrorInvalidEmailOrPhone;
      }
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Constants.LOGIN_BACKGROUND_IMAGE),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Icon(
                      Icons.directions_bus_filled_rounded,
                      size: 72,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 32),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () async {
                          final country = await CountryPickerSheet.show(context);
                          if (country != null) {
                            ref.read(selectedCountryProvider.notifier).state = country;
                          }
                        },
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.white30, width: 1),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                _countryCodeToEmoji(selectedCountry.code),
                                style: const TextStyle(fontSize: 14),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                selectedCountry.name.length > 15
                                    ? '${selectedCountry.name.substring(0, 15)}...'
                                    : selectedCountry.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 2),
                              const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                                size: 14,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    _whiteTextField(
                      controller: _usernameController,
                      label: l10n.loginEmailOrPhoneLabel,
                      keyboardType: TextInputType.emailAddress,
                      prefix: AnimatedSize(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInOut,
                        child: _showPrefix
                            ? Container(
                                margin: const EdgeInsets.only(right: 8.0, bottom: 2.0),
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: Colors.white54, width: 1),
                                ),
                                child: Text(
                                  selectedCountry.displayDialCode,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    _whiteTextField(
                      controller: _passwordController,
                      label: l10n.loginPasswordLabel,
                      obscureText: true,
                    ),
                    if (fieldError != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        fieldError,
                        style: const TextStyle(color: AppColors.ERROR),
                      ),
                    ],
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: isLoading
                          ? null
                          : () => ref.read(loginViewModelProvider.notifier).login(
                        username: _usernameController.text,
                        password: _passwordController.text,
                        country: selectedCountry,
                      ),
                      child: isLoading
                          ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                          : Text(l10n.loginButton),
                    ),
                    const SizedBox(height: 12),
                    TextButton(
                      onPressed: isLoading
                          ? null
                          : () => _showForgotPasswordDialog(context, ref),
                      style: TextButton.styleFrom(foregroundColor: Colors.white),
                      child: Text(l10n.loginForgotPassword),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _whiteTextField({
    required TextEditingController controller,
    required String label,
    TextInputType? keyboardType,
    bool obscureText = false,
    Widget? prefix,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      cursorColor: Colors.white,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        prefix: prefix,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white70),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  void _showForgotPasswordDialog(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final emailController = TextEditingController();
    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          content: TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: l10n.forgotPasswordEmailLabel),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: Text(l10n.forgotPasswordCancel),
            ),
            TextButton(
              onPressed: () async {
                final email = emailController.text.trim();
                if (email.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(l10n.forgotPasswordInvalidEmail)),
                  );
                  return;
                }
                final ok = await ref
                    .read(loginViewModelProvider.notifier)
                    .forgotPassword(email);
                if (dialogContext.mounted) Navigator.of(dialogContext).pop();
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        ok
                            ? l10n.forgotPasswordSuccess
                            : l10n.forgotPasswordInvalidEmail,
                      ),
                    ),
                  );
                }
              },
              child: Text(l10n.forgotPasswordSend),
            ),
          ],
        );
      },
    );
  }
}
