import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaser_el_kbabgi_ma/constants.dart';
import 'package:sizer/sizer.dart';

class HaveAccountOrNo extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final String ClickedText;

  const HaveAccountOrNo({
    super.key,
    required this.onTap,
    required this.text,
    required this.ClickedText,
  });

  @override
  Widget build(BuildContext context) {
    Locale? currentLocale = Get.locale;

    // Conditionally set the font based on locale
    TextStyle textStyle;
    TextStyle ClickedTextStyle;
    if (currentLocale?.languageCode == 'ar') {
      // Use a different font for Arabic
      textStyle = GoogleFonts.tajawal(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        color: White, // Use the textColor parameter, or default to Black
      );
      ClickedTextStyle = GoogleFonts.tajawal(
        decoration: TextDecoration.underline,
        decorationColor: BlackGold,
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        color: BlackGold, // Use the textColor parameter, or default to Black
      );
    } else {
      // Use default font for English
      textStyle = GoogleFonts.oswald(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        color: White, // Use the textColor parameter, or default to Black
      );
      ClickedTextStyle = GoogleFonts.oswald(
        fontSize: 17.sp,
        decoration: TextDecoration.underline,
        decorationColor: BlackGold,
        fontWeight: FontWeight.w500,
        color: BlackGold, // Use the textColor parameter, or default to Black
      );
    }
    return Row(
      children: [
        Text(
          text.tr,
          style: textStyle,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            ClickedText.tr,
            style: ClickedTextStyle,
          ),
        ),
      ],
    );
  }
}
