import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seller_helper/Screens/dashboard/dashboard.dart';
import 'package:seller_helper/Service/api_service.dart';

class AuthController {
  static Future login(
      BuildContext context, String phone, String password) async {
    final authenticate = await ApiService.login(phone, password);

    if (authenticate.statusCode != 200) {
      String errorResponse = jsonDecode(authenticate.body)['error'];
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorResponse),
        ),
      );
      return authenticate.body;
    }
    Get.to(() => Dashboard());

    return authenticate;
  }
}
