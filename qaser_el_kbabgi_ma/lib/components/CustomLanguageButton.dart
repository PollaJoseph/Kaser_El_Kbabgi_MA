import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qaser_el_kbabgi_ma/constants.dart';
import 'package:sizer/sizer.dart';

class CustomLanguageButton extends StatefulWidget {
  CustomLanguageButton({
    super.key,
    required this.onChanged1,
    required this.onChanged2,
  });

  final List<String> option = ["AR", "EN"];
  final void Function(String?) onChanged1;
  final void Function(String?) onChanged2;

  @override
  State<CustomLanguageButton> createState() => _CustomLanguageButtonState();
}

class _CustomLanguageButtonState extends State<CustomLanguageButton> {
  String currentOption = "EN";

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
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            var local = const Locale("en");
            Get.updateLocale(local);
            setState(() {
              currentOption = 'EN';
              widget.onChanged1(currentOption);
            });
          },
          child: CircleAvatar(
            backgroundColor:
                currentOption == 'EN' ? BlackGold : Colors.transparent,
            child: Text('EN',
                style: currentLocale == 'EN'
                    ? GoogleFonts.tajawal(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                        color: White,
                      )
                    : GoogleFonts.oswald(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        color: White,
                      )),
          ),
        ),
        GestureDetector(
          onTap: () {
            var local = const Locale("ar");
            Get.updateLocale(local);
            setState(() {
              currentOption = 'AR';
              widget.onChanged2(currentOption);
            });
          },
          child: CircleAvatar(
            backgroundColor:
                currentOption == 'AR' ? BlackGold : Colors.transparent,
            child: Text('AR',
                style: currentLocale == 'AR'
                    ? GoogleFonts.tajawal(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                        color: White,
                      )
                    : GoogleFonts.oswald(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        color: White,
                      )),
          ),
        ),
      ],
    );
  }
}
