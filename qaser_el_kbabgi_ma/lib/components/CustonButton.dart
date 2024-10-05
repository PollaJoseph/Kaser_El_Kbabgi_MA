import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaser_el_kbabgi_ma/constants.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final void Function() onPressed;
  final Color? color;
  final Color textColor; // Add the text color parameter
  final String text;

  const CustomButton({
    super.key,
    required this.onPressed,
    this.color,
    required this.text,
    required this.padding,
    required this.textColor, // Make the textColor parameter optional
  });

  @override
  Widget build(BuildContext context) {
    // Get the current locale
    Locale? currentLocale = Get.locale;

    // Conditionally set the font based on locale
    TextStyle textButtonStyle;

    if (currentLocale?.languageCode == 'ar') {
      // Use a different font for Arabic
      textButtonStyle = GoogleFonts.tajawal(
        fontSize: 17.sp,
        fontWeight: FontWeight.w600,
        color: textColor, // Use the textColor parameter, or default to Black
      );
    } else {
      // Use default font for English
      textButtonStyle = GoogleFonts.oswald(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        color: textColor, // Use the textColor parameter, or default to Black
      );
    }

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          gradient: color == null
              ? LinearGradient(
                  colors: [WhiteGold, BlackGold],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : null,
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: padding,
          child: Text(
            text,
            style: textButtonStyle,
          ),
        ),
      ),
    );
  }
}
