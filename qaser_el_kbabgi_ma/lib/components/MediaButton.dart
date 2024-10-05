import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MediaButton extends StatelessWidget {
  final void Function() onPressed;
  final Color ButtonColor;
  final Color TextColor;
  final String text;
  final String ImagePath;
  final double Space;
  final double ButtonHeight;
  final double ImageWidth;
  final double ImageHeight;
  const MediaButton(
      {super.key,
      required this.ButtonColor,
      required this.text,
      required this.ImagePath,
      required this.ImageWidth,
      required this.ImageHeight,
      required this.onPressed,
      required this.ButtonHeight,
      required this.TextColor,
      required this.Space});

  @override
  Widget build(BuildContext context) {
    Locale? currentLocale = Get.locale;

    // Conditionally set the font based on locale
    TextStyle textStyle;

    if (currentLocale?.languageCode == 'ar') {
      // Use a different font for Arabic
      textStyle = GoogleFonts.tajawal(
        fontSize: 15.sp,
        fontWeight: FontWeight.w600,
        color: TextColor, // Use the textColor parameter, or default to Black
      );
    } else {
      // Use default font for English
      textStyle = GoogleFonts.oswald(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: TextColor, // Use the textColor parameter, or default to Black
      );
    }
    return MaterialButton(
      height: ButtonHeight.h,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: ButtonColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Row(
          children: [
            Text(
              text,
              style: textStyle,
            ),
            SizedBox(
              width: Space.w,
            ),
            Image.asset(
              ImagePath,
              width: ImageWidth.w,
              height: ImageHeight.h,
            )
          ],
        ),
      ),
    );
  }
}
