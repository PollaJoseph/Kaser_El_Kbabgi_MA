import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaser_el_kbabgi_ma/components/CustonButton.dart';
import 'package:qaser_el_kbabgi_ma/components/MediaButton.dart';
import 'package:qaser_el_kbabgi_ma/constants.dart';
import 'package:qaser_el_kbabgi_ma/pages/AuthPages/LoginPage.dart';
import 'package:qaser_el_kbabgi_ma/pages/AuthPages/SignUpPage.dart';

import 'package:sizer/sizer.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Locale? currentLocale = Get.locale;

    // Conditionally set the font based on locale
    TextStyle textStyle;

    if (currentLocale?.languageCode == 'ar') {
      // Use a different font for Arabic
      textStyle = GoogleFonts.tajawal(
        fontSize: 17.sp,
        fontWeight: FontWeight.w600,
        color: White, // Use the textColor parameter, or default to Black
      );
    } else {
      // Use default font for English
      textStyle = GoogleFonts.oswald(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        color: White, // Use the textColor parameter, or default to Black
      );
    }
    return Scaffold(
      backgroundColor: Black,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
            child: Image.asset(
              Logo,
              height: 40.h,
              width: 90.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
            child: CustomButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              text: "LOGIN".tr,
              padding: EdgeInsets.symmetric(vertical: 1.7.h, horizontal: 27.w),
              textColor: Black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 1.h),
            child: CustomButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()));
              },
              color: White,
              text: "sign up".tr,
              padding: EdgeInsets.symmetric(vertical: 1.7.h, horizontal: 22.w),
              textColor: Black,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Divider(
                    color: BlackGold,
                    thickness: 0.5.w,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Text("Continue with".tr,
                      textAlign: TextAlign.start, style: textStyle),
                ),
                Expanded(
                  child: Divider(
                    color: BlackGold,
                    thickness: 0.5.w,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: MediaButton(
              ButtonColor: FacgebookColor,
              text: "Continue with Facebook".tr,
              ImagePath: Facebook,
              ImageWidth: 5,
              ImageHeight: 5,
              onPressed: () {},
              ButtonHeight: 7,
              TextColor: White,
              Space: 9,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: MediaButton(
              ButtonColor: White,
              text: "Continue with Google".tr,
              ImagePath: Google,
              ImageWidth: 10,
              ImageHeight: 5,
              onPressed: () {},
              ButtonHeight: 7,
              TextColor: Black,
              Space: 10,
            ),
          )
        ],
      ),
    );
  }
}
