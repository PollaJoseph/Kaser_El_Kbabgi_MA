import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomTextFiledTitle extends StatelessWidget {
  final IconData? icon;
  // final double? ImageWidth;
  //final double ?ImageHeight;
  final String? imagePath; // Changed the variable to follow camelCase
  final String text;
  final Color textColor;

  const CustomTextFiledTitle({
    Key? key,
    this.icon,
    required this.text,
    required this.textColor,
    this.imagePath,
    // this.ImageWidth,
    // this.ImageHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Locale? currentLocale = Get.locale;

    TextStyle titleStyle;

    // Set text style based on locale (Arabic or default)
    if (currentLocale?.languageCode == 'ar') {
      titleStyle = GoogleFonts.tajawal(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        color: textColor,
      );
    } else {
      titleStyle = GoogleFonts.oswald(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        color: textColor,
      );
    }

    return Row(
      children: [
        if (icon != null) // Display Icon if `icon` is provided
          Icon(
            icon,
            size: 20.sp,
            color: textColor, // Use the provided textColor
          )
        else if (imagePath != null) // Display Image if `imagePath` is provided
          Image.asset(
            imagePath!,
            width: 5.w,
            height: 3.h,
          ),
        SizedBox(width: 1.w), // Space between icon/image and text
        Text(
          text.tr, // Translated text
          style: titleStyle,
        ),
      ],
    );
  }
}
