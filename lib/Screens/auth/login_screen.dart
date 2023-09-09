import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:seller_helper/Screens/auth/forgot_password_screen.dart';
import 'package:seller_helper/Screens/auth/sign_up_screen.dart';
import 'package:seller_helper/util/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    //Screen Sizes
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: AppColors.backgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  width: screenWidth,
                  height: screenHeight * 0.35,
                  child: Image.asset(
                    'images/animations/focused_woman_640.gif',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  // color: Colors.brown,
                  width: screenWidth,
                  height: screenHeight * 0.05,
                  margin: const EdgeInsets.only(top: 3, left: 15),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 31,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, top: 30, right: 15),
                  child: TextFormField(
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                    decoration: const InputDecoration(
                      iconColor: AppColors.border,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 10,
                          color: Colors.red,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.border,
                        ),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: AppColors.textColor,
                      ),
                      icon: Icon(Icons.alternate_email),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: -3),
                    ),
                  ),
                ),
                Container(
                  width: screenWidth * 1,
                  margin: const EdgeInsets.only(left: 15, top: 15, right: 15),
                  child: TextFormField(
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.border,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.border),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: AppColors.textColor,
                      ),
                      icon: Icon(Icons.lock_outline_rounded),
                      iconColor: AppColors.border,
                      suffixIcon: Icon(Icons.remove_red_eye),
                      suffixIconColor: AppColors.textClr,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: -3),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 8, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: AppColors.textClr2,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                //Login Button
                Container(
                  margin: const EdgeInsets.only(right: 15, left: 45),
                  width: screenWidth * 1,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(10),
                      ),
                      elevation: MaterialStateProperty.all<double>(10),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("You are logged in"),
                          backgroundColor: AppColors.primaryColor,
                          showCloseIcon: true,
                          duration: Duration(seconds: 3),
                          elevation: 10,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: Text(
                    "OR",
                    style: TextStyle(
                      color: AppColors.textClr2,
                      fontSize: 18,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),
                //Login Button using Google
                Container(
                  margin: const EdgeInsets.only(right: 15, left: 45),
                  width: screenWidth,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(10),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xAAF2F2F2),
                      ),
                      elevation: MaterialStateProperty.all<double>(8),
                    ),
                    child: Row(children: [
                      Image.asset(
                        "images/google.png",
                        width: 50,
                        height: 25,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 22),
                      ),
                      const Text(
                        "Login with Google",
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.textClr,
                        ),
                      ),
                    ]),
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: screenHeight * 0.105),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "New to Shoppie? ",
                      style: const TextStyle(
                        color: AppColors.textColor,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "Register",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ),
                              );
                            },
                          style: const TextStyle(color: AppColors.textClr2),
                        ),
                      ],
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
