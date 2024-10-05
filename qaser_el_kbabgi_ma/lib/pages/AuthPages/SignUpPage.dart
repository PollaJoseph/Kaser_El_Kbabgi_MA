import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:qaser_el_kbabgi_ma/components/CustomTextField.dart';
import 'package:qaser_el_kbabgi_ma/components/CustomTextFiledTitle.dart';
import 'package:qaser_el_kbabgi_ma/components/CustonButton.dart';
import 'package:qaser_el_kbabgi_ma/components/HaveAccountOrNo.dart';
import 'package:qaser_el_kbabgi_ma/constants.dart';
import 'package:qaser_el_kbabgi_ma/pages/AuthPages/LoginPage.dart';

import 'package:sizer/sizer.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController signUpUserNameController = TextEditingController();
  TextEditingController signUpEmailController = TextEditingController();
  TextEditingController signUpPasswordController = TextEditingController();
  TextEditingController signUpPhoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Black,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 2.h),
              child: Image.asset(Logo),
            ),
            Padding(
                padding: TextFieldTitlePadding,
                child: CustomTextFiledTitle(
                  imagePath: PersonIcon,
                  text: "Username",
                  textColor: White,
                )),
            customTextField(
              obscureText: false,
              hintText: 'Enter Your Name',
              keyboardType: TextInputType.name,
              controller: signUpUserNameController,
            ),
            TextFieldSpacing,
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
              controller: signUpEmailController,
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
              obscureText: true,
              showPasswordToggle: true,
              hintText: "Enter Strong Password",
              keyboardType: TextInputType.text,
              controller: signUpPasswordController,
            ),
            TextFieldSpacing,
            Padding(
                padding: TextFieldTitlePadding,
                child: CustomTextFiledTitle(
                  icon: Icons.phone_outlined,
                  text: "Phone Number",
                  textColor: White,
                )),
            customTextField(
              obscureText: false,
              maxLength: 11,
              hintText: 'Enter Your Phone Number',
              keyboardType: TextInputType.phone,
              controller: signUpPhoneNumberController,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
              child: CustomButton(
                onPressed: () {},
                text: "sign up".tr,
                padding:
                    EdgeInsets.symmetric(vertical: 1.7.h, horizontal: 22.w),
                textColor: Black,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: HaveAccountOrNo(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                text: "Already have an account? ",
                ClickedText: "login",
              ),
            )
          ]),
        ));
  }
}
