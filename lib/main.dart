import 'package:flutter/material.dart';

import 'Screens/auth/login_screen.dart';

void main() {
  runApp(const Shoppie());
}

class Shoppie extends StatelessWidget {
  const Shoppie({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(),
    );
  }
}
