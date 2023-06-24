import 'package:flutter/material.dart';
import 'package:seller_helper/util/app_colors.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

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
                        'images/animations/forgot_password_640.gif',
                        fit: BoxFit.fill,
                        width: screenWidth,
                      ),
                      Padding(
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
                  color: AppColors.backgroundColor,
                  width: screenWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 20),
                        child: Text(
                          "Forgot \nPassword?",
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0, left: 8),
                        child: Text(
                          "Don`t worry! It happens. Please enter the address associated with your account.",
                          style:
                              TextStyle(fontSize: 16, color: AppColors.textClr),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 20, right: 15),
                    child: TextFormField(
                      cursorHeight: 25,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(borderSide: BorderSide()),
                        contentPadding: EdgeInsets.only(bottom: 3),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.border),
                        ),
                        labelText: "Email ID / Mobile Number",
                        labelStyle: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                        ),
                        icon: Icon(
                          Icons.alternate_email,
                          color: AppColors.border,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                Container(
                  width: screenWidth * 0.9,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(8),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.blueAccent,
                      ),
                      elevation: MaterialStateProperty.all<double>(18),
                    ),
                    onPressed: () {},
                    child: Text(
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
