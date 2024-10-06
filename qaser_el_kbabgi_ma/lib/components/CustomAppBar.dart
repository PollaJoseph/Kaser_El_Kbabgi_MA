import 'package:flutter/material.dart';
import 'package:qaser_el_kbabgi_ma/constants.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Black,
          border:  Border(
              bottom: BorderSide(color:BlackGold, width: 2))),
      child: Image.asset(
        Logo,
        height: 12.h,
        width: 12.w,
      ),
    );
  }
}