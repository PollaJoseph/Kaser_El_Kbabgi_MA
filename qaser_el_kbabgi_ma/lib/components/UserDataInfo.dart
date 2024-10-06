import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaser_el_kbabgi_ma/constants.dart';
import 'package:sizer/sizer.dart';

class UserDataInfo extends StatelessWidget {
  const UserDataInfo({super.key});

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
    final String userName = "Ahmed Tawfek";
    final String userPhoneNumber = "01101117611";

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      child: Container(
          height: 12.h,
          decoration: BoxDecoration(
              color: Black, borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              children: [
                Image.asset(
                  Avatar,
                  height: 12.h,
                  width: 12.w,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 2.5.h, horizontal: 2.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name :$userName".tr,
                        style: textStyle,
                      ),
                      Text(
                        "Phone :$userPhoneNumber".tr,
                        style: textStyle,
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
