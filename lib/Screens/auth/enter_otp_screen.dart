import 'package:flutter/material.dart';
import 'package:seller_helper/util/app_colors.dart';

class EnterOTPScreen extends StatelessWidget {
  const EnterOTPScreen({Key? key}) : super(key: key);

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
                      const Padding(
                        padding: EdgeInsets.only(top: 8, left: 5),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.arrow_back,
                            size: 28,
                          ),
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
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 20),
                        child: Text(
                          "Enter OTP",
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: RichText(
                          text: const TextSpan(
                            text: "An 4 digit code has been sent to ",
                            style: TextStyle(
                              fontSize: 17,
                              color: AppColors.border,
                              height: 1.8,
                            ),
                            children: [
                              TextSpan(
                                text: "\n +254 705 822 035",
                                style: TextStyle(
                                  color: AppColors.textClr2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 70,
                      width: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Container(
                          color: Color(0xAAD8D8D8),
                          child: const TextField(
                            autofocus: true,
                            maxLength: 1,
                            cursorHeight: 25,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                counterText: '',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 32),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.textClr,
                                    width: 3,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textClr, width: 3),
                                )),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      width: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Container(
                          color: Color(0xAAD8D8D8),
                          child: const TextField(
                            autofocus: true,
                            maxLength: 1,
                            cursorHeight: 25,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                counterText: '',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 32),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.textClr,
                                    width: 3,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textClr, width: 3),
                                )),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      width: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Container(
                          color: Color(0xAAD8D8D8),
                          child: const TextField(
                            autofocus: true,
                            maxLength: 1,
                            cursorHeight: 25,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                counterText: '',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 32),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.textClr,
                                    width: 3,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textClr, width: 3),
                                )),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      width: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Container(
                          color: Color(0xAAD8D8D8),
                          child: const TextField(
                            autofocus: true,
                            maxLength: 1,
                            cursorHeight: 25,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                counterText: '',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 32),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.textClr,
                                    width: 3,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: AppColors.textClr, width: 3),
                                )),
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
