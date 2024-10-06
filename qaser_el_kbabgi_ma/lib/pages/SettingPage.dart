import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaser_el_kbabgi_ma/components/CustomAppBar.dart';
import 'package:qaser_el_kbabgi_ma/components/CustomLanguageButton.dart';
import 'package:qaser_el_kbabgi_ma/components/SettingButton.dart';
import 'package:qaser_el_kbabgi_ma/components/UserDataInfo.dart';
import 'package:qaser_el_kbabgi_ma/constants.dart';
import 'package:qaser_el_kbabgi_ma/pages/BranchPage.dart';
import 'package:qaser_el_kbabgi_ma/pages/WelcomePage.dart';
import 'package:sizer/sizer.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Locale? currentLocale = Get.locale;

    TextStyle textStyle;

    if (currentLocale?.languageCode == 'ar') {
      textStyle = GoogleFonts.tajawal(
        fontSize: 17.sp,
        fontWeight: FontWeight.w600,
        color: White,
      );
    } else {
      textStyle = GoogleFonts.oswald(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        color: White,
      );
    }
    return Scaffold(
        backgroundColor: Background,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            SizedBox(
              height: 2.h,
            ),
            const UserDataInfo(),
            SizedBox(
              height: 1.5.h,
            ),
            SettingButtos(option: "Change Password".tr, onTap: () {}),
            SizedBox(
              height: 0.5.h,
            ),
            SettingButtos(
                option: "Our Branches".tr,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BranchPage()));
                }),
            SizedBox(
              height: 0.5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.w),
              child: Container(
                height: 7.h,
                decoration: BoxDecoration(
                    color: Black, borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: EdgeInsets.only(left: 6.w, right: 4.w),
                  child: Row(
                    children: [
                      Text("Language".tr, style: textStyle),
                      const Spacer(),
                      CustomLanguageButton(
                        onChanged1: (String? lang) {},
                        onChanged2: (String? lang) {},
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            SettingButtos(
              option: "Logout".tr,
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomePage()),
                    (Route<dynamic> route) => false);
              },
              icon: Icons.logout,
            ),
          ],
        ));
  }
}
