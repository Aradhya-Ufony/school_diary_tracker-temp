import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/di/providers.dart';
import '../../../core/utils/app_constants.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../viewmodel/login_viewmodel.dart';
import 'country_picker_sheet.dart';

class MovingBackground extends StatefulWidget {
  final String imagePath;

  const MovingBackground({
    super.key,
    required this.imagePath,
  });

  @override
  State<MovingBackground> createState() => _MovingBackgroundState();
}

class _MovingBackgroundState extends State<MovingBackground>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(
          seconds: 10), // Speed of movement is slightly increased
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          final scale = 1.15 + (_animationController.value * 0.10);
          final xTranslation = (0.5 - _animationController.value) * 40.0;
          final yTranslation = (0.5 - _animationController.value) * 20.0;
          return Transform.translate(
            offset: Offset(xTranslation, yTranslation),
            child: Transform.scale(
              scale: scale,
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          );
        },
      ),
    );
  }
}

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
    final int firstLetter =
        countryCode.toUpperCase().codeUnitAt(0) - 0x41 + 0x1F1E6;
    final int secondLetter =
        countryCode.toUpperCase().codeUnitAt(1) - 0x41 + 0x1F1E6;
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
      } else if (next is LoginFailure) {
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
      body: Stack(
        children: [
          // 1. Background
          Positioned.fill(
            child: Hero(
              tag: 'splash_background',
              child: MovingBackground(
                imagePath: Constants.LOGIN_BACKGROUND_IMAGE,
              ),
            ),
          ),
          // 2. Dark Overlay for design consistency
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.35),
            ),
          ),
          // 3. Bottom decoration image (user provided)
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              top: false,
              child: Image.asset(
                Constants.LOGIN_BOTTOM_IMAGE,
                fit: BoxFit.fitWidth,
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox.shrink();
                },
              ),
            ),
          ),

          // Login Form Card
          Align(
            alignment: const Alignment(0, 0.15),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // The Card Container
                      Container(
                        margin: const EdgeInsets.only(
                            top:
                                40), // leaves space for logo to overlap top edge
                        decoration: BoxDecoration(
                          color: Colors.white
                              .withOpacity(0.92), // translucent white bg
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 12,
                              offset: Offset(0, 6),
                            )
                          ],
                        ),
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * (MediaQuery.of(context).orientation == Orientation.landscape ? 0.85 : 0.65),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.fromLTRB(24, 54, 24,
                                20), // 54px top padding leaves space for overlapping logo
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                // Country Picker
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: InkWell(
                                    onTap: () async {
                                      final country =
                                          await CountryPickerSheet.show(
                                              context);
                                      if (country != null) {
                                        ref
                                            .read(selectedCountryProvider
                                                .notifier)
                                            .state = country;
                                      }
                                    },
                                    borderRadius: BorderRadius.circular(16),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 8),
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.05),
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                            color: Colors.black12, width: 1),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            _countryCodeToEmoji(
                                                selectedCountry.code),
                                            style:
                                                const TextStyle(fontSize: 14),
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            selectedCountry.name.length > 15
                                                ? '${selectedCountry.name.substring(0, 15)}...'
                                                : selectedCountry.name,
                                            style: const TextStyle(
                                              color: Colors.black87,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(width: 2),
                                          const Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.black54,
                                            size: 14,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                // Username field
                                _cardTextField(
                                  controller: _usernameController,
                                  label: l10n.loginEmailOrPhoneLabel,
                                  keyboardType: TextInputType.emailAddress,
                                  prefix: AnimatedSize(
                                    duration: const Duration(milliseconds: 250),
                                    curve: Curves.easeInOut,
                                    child: _showPrefix
                                        ? Container(
                                            margin: const EdgeInsets.only(
                                                right: 8.0, bottom: 2.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 2),
                                            decoration: BoxDecoration(
                                              color: Colors.black
                                                  .withOpacity(0.05),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              border: Border.all(
                                                  color: Colors.black12,
                                                  width: 1),
                                            ),
                                            child: Text(
                                              selectedCountry.displayDialCode,
                                              style: const TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                          )
                                        : const SizedBox.shrink(),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                // Password field
                                _cardTextField(
                                  controller: _passwordController,
                                  label: l10n.loginPasswordLabel,
                                  obscureText: true,
                                ),

                                if (fieldError != null) ...[
                                  const SizedBox(height: 8),
                                  Text(
                                    fieldError,
                                    style:
                                        const TextStyle(color: AppColors.ERROR),
                                  ),
                                ],
                                const SizedBox(height: 8),
                                // LOGIN Button
                                SizedBox(
                                  height: 48,
                                  child: ElevatedButton(
                                    onPressed: isLoading
                                        ? null
                                        : () => ref
                                            .read(
                                                loginViewModelProvider.notifier)
                                            .login(
                                              username:
                                                  _usernameController.text,
                                              password:
                                                  _passwordController.text,
                                              country: selectedCountry,
                                            ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.PRIMARY,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      elevation: 0,
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
                                        : Text(
                                            l10n.loginButton.toUpperCase(),
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.0,
                                            ),
                                          ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                // Need help Helpline Text
                                // Center(
                                //   child: Text(
                                //     "Need help? Call us at +91 7879 360 360",
                                //     style: TextStyle(
                                //       color: Colors.grey.shade700,
                                //       fontSize: 13,
                                //       fontWeight: FontWeight.w500,
                                //     ),
                                //   ),
                                // ),
                                // const SizedBox(height: 4),
                                // Forgot Password Text Button
                                Center(
                                  child: TextButton(
                                    onPressed: isLoading
                                        ? null
                                        : () => _showForgotPasswordDialog(
                                            context, ref),
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.grey.shade600,
                                      padding: EdgeInsets.zero,
                                      minimumSize: const Size(50, 30),
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                    ),
                                    child: Text(
                                      l10n.loginForgotPassword,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Pinned Logo overlapping top border
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: _logo(size: 80),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }

  Widget _cardTextField({
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
      cursorColor: Colors.black87,
      style: const TextStyle(color: Colors.black87, fontSize: 15),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black54, fontSize: 14),
        prefix: prefix,
        filled: true,
        fillColor: Colors.grey.shade50,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: AppColors.PRIMARY, width: 1.5),
        ),
      ),
    );
  }

  Widget _logo({required double size}) {
    return Hero(
      tag: 'app_logo',
      child: Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: ClipOval(
          child: Transform.scale(
            scale: 1.15,
            child: Image.asset(
              'assets/images/ufony_icon.png',
              fit: BoxFit.cover,
            ),
          ),
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
            decoration:
                InputDecoration(labelText: l10n.forgotPasswordEmailLabel),
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
