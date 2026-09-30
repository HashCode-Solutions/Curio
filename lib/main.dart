import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/splash_screen.dart';
import 'widgets/connectivity_gate.dart';

void main() {
  runApp(const CurioApp());
}

class CurioApp extends StatelessWidget {
  const CurioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      // Wraps every screen and every route — connectivity is checked once,
      // here, rather than each screen having to remember to check for
      // itself.
      builder: (context, child) => ConnectivityGate(child: child!),
      home: const SplashScreen(),
    );
  }
}
