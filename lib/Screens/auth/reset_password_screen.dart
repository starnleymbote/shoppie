import 'package:flutter/material.dart';
import 'package:seller_helper/util/app_colors.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8),
      color: AppColors.backgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: screenHeight * 0.4,
                  child: Stack(
                    children: [
                      Image.asset(
                        'images/animations/padlock_500.gif',
                        fit: BoxFit.fill,
                        width: screenWidth,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8, left: 5),
                        child: Align(
                          child: Icon(
                            Icons.arrow_back,
                            size: 28,
                          ),
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: screenWidth * 0.9,
                  child: const Text(
                    "Reset \nPassword",
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, top: 20, right: 15),
                      child: TextFormField(
                        cursorHeight: 25,
                        decoration: const InputDecoration(
                          border:
                              UnderlineInputBorder(borderSide: BorderSide()),
                          contentPadding: EdgeInsets.only(bottom: 3),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.border),
                          ),
                          labelText: "New password",
                          labelStyle: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 16,
                          ),
                          icon: Icon(
                            Icons.lock,
                            color: AppColors.border,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, top: 20, right: 15),
                      child: TextFormField(
                        cursorHeight: 25,
                        decoration: const InputDecoration(
                          border:
                              UnderlineInputBorder(borderSide: BorderSide()),
                          contentPadding: EdgeInsets.only(bottom: 3),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: AppColors.border),
                          ),
                          labelText: "Confirm new password",
                          labelStyle: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 16,
                          ),
                          icon: Icon(
                            Icons.lock,
                            color: AppColors.border,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 55,
                ),
                Container(
                  width: screenWidth * 0.9,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(8),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.blueAccent,
                      ),
                      elevation: MaterialStateProperty.all<double>(18),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
