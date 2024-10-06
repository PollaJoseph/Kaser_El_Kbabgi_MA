import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaser_el_kbabgi_ma/constants.dart';
import 'package:sizer/sizer.dart';

class SettingButtos extends StatelessWidget {
  final IconData? icon;
  final Function() onTap;
  final String option;
  const SettingButtos(
      {super.key, required this.option, this.icon, required this.onTap});

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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 7.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Black,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 6.w, right: 4.w),
            child: Row(
              children: [
                Text(option, style: textStyle),
                const Spacer(),
                Icon(
                  icon ?? Icons.arrow_forward_ios_rounded,
                  color: White,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
