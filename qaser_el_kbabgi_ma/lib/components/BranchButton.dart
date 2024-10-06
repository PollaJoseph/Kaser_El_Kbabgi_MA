import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaser_el_kbabgi_ma/constants.dart';
import 'package:sizer/sizer.dart';

class BranchButton extends StatelessWidget {
  final void Function() onTap;
  final String cityName;
  final String branchImage;
  const BranchButton(
      {super.key,
      required this.onTap,
      required this.cityName,
      required this.branchImage});

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
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: Container(
            height: 10.h,
            decoration: BoxDecoration(
                color: Black, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                children: [
                  Image.asset(
                    branchImage,
                    height: 10.h,
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(cityName, style: textStyle),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: White,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
