import 'package:flutter/material.dart';
import '../../auth/view/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginScreen(showSplash: true);
  }
}
