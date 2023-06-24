import 'package:flutter/material.dart';
import 'package:seller_helper/util/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
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
                  width: screenWidth,
                  height: screenHeight * 0.3,
                  child: Stack(
                    children: [
                      Image.asset(
                        'images/animations/quickbook_500.gif',
                        fit: BoxFit.fill,
                        width: screenWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6, left: 1),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_back,
                              color: AppColors.textClr,
                              size: 33,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.brown,
                  width: screenWidth,
                  height: screenHeight * 0.05,
                  margin: const EdgeInsets.only(top: 3, left: 15),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, top: 30, right: 15),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.border,
                    ),
                    decoration: const InputDecoration(
                      iconColor: AppColors.border,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 10,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.border,
                        ),
                      ),
                      labelText: 'Full Name',
                      labelStyle: TextStyle(
                        color: AppColors.textColor,
                      ),
                      icon: Icon(Icons.person_sharp),
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
                      fontSize: 16,
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
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: AppColors.textColor,
                      ),
                      icon: Icon(Icons.alternate_email),
                      iconColor: AppColors.border,
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
                      fontSize: 16,
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
                      labelText: 'Phone',
                      labelStyle: TextStyle(
                        color: AppColors.textColor,
                      ),
                      icon: Icon(Icons.phone),
                      iconColor: AppColors.border,
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
                      fontSize: 16,
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
                SizedBox(height: screenHeight * 0.02),
                Container(
                  margin: const EdgeInsets.only(left: 50, right: 15),
                  child: RichText(
                    text: const TextSpan(
                      text: "By signing up you agree to our ",
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 17,
                        height: 1.4,
                      ),
                      children: [
                        TextSpan(
                          text: "Terms and Conditions",
                          style: TextStyle(
                              color: AppColors.textClr2, fontSize: 18.5),
                        ),
                        TextSpan(
                          text: " and ",
                          style: TextStyle(
                            color: AppColors.textClr,
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(
                            color: AppColors.textClr2,
                            fontSize: 18.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15, left: 45),
                  width: screenWidth,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(15),
                      ),
                      elevation: MaterialStateProperty.all(14),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.06,
                ),
                Center(
                  child: RichText(
                    text: const TextSpan(
                      text: "Joined us Before?  ",
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "Login",
                          style: TextStyle(
                              color: AppColors.textClr2, fontSize: 17),
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
