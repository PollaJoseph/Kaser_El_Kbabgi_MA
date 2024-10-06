import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaser_el_kbabgi_ma/components/CustomTextField.dart';
import 'package:qaser_el_kbabgi_ma/components/CustomTextFiledTitle.dart';
import 'package:qaser_el_kbabgi_ma/components/CustonButton.dart';
import 'package:qaser_el_kbabgi_ma/components/HaveAccountOrNo.dart';
import 'package:qaser_el_kbabgi_ma/constants.dart';
import 'package:qaser_el_kbabgi_ma/pages/AuthPages/SignUpPage.dart';

import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Locale? currentLocale = Get.locale;

    TextStyle textStyle;

    if (currentLocale?.languageCode == 'ar') {
      textStyle = GoogleFonts.tajawal(
        decoration: TextDecoration.underline,
        decorationColor: White,
        fontSize: 17.sp,
        fontWeight: FontWeight.w600,
        color: White, 
      );
    } else {
      textStyle = GoogleFonts.oswald(
        decoration: TextDecoration.underline,
        decorationColor: White,
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        color: White, 
      );
    }
    return Scaffold(
        backgroundColor: Black,
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 4.h),
            child: Image.asset(Logo),
          ),
          Padding(
              padding: TextFieldTitlePadding,
              child: CustomTextFiledTitle(
                imagePath: MailIcon,
                text: "E-mail",
                textColor: White,
              )),
          customTextField(
            obscureText: false,
            hintText: 'Enter Your Email',
            keyboardType: TextInputType.emailAddress,
            controller: loginEmailController,
          ),
          TextFieldSpacing,
          Padding(
              padding: TextFieldTitlePadding,
              child: CustomTextFiledTitle(
                imagePath: LockIcon,
                text: "Password",
                textColor: White,
              )),
          customTextField(
            key: _formKey,
            obscureText: true,
            showPasswordToggle: true,
            hintText: "Enter Your Password",
            keyboardType: TextInputType.text,
            controller: loginPasswordController,
          ),
          Padding(
            padding:
                EdgeInsetsDirectional.only(top: 1.h, start: 10.w, bottom: 2.h),
            child: InkWell(
                onTap: () {},
                child: Text("Forgot Your Password ?".tr, style: textStyle)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
            child: CustomButton(
              onPressed: () {
                /*
                       Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const homeScreen()),
                      (Route<dynamic> route) => false);*/
              },
              text: "Login now".tr,
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 22.w),
              textColor: Black,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 10.h, start: 20.w),
            child: HaveAccountOrNo(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()));
              },
              text: "Don't have an account? ",
              ClickedText: "Sign Up",
            ),
          ),
        ])));
  }
}
