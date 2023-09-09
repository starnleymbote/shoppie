import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seller_helper/Service/api_service.dart';

import 'Screens/auth/login_screen.dart';

void main() {
  runApp(const Shoppie());
}

class Shoppie extends StatelessWidget {
  const Shoppie({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put<ApiService>(ApiService());
    return MaterialApp(
      home: const LoginScreen(),
    );
  }
}
