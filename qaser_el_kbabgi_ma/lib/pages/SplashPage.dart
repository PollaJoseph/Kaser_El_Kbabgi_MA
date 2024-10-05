import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lottie/lottie.dart';
import 'package:qaser_el_kbabgi_ma/components/CustomGradientText.dart';
import 'package:qaser_el_kbabgi_ma/constants.dart';
import 'package:qaser_el_kbabgi_ma/pages/WelcomePage.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  bool isOnline = true;
  bool isNavigated = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    checkConnectivity();
  }

  void checkConnectivity() async {
    final ConnectivityResult result = await Connectivity().checkConnectivity();
    setState(() {
      isOnline = result != ConnectivityResult.none;
    });

    if (isOnline) {
      startSplashTimer();
    }

    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() {
        isOnline = result != ConnectivityResult.none;
      });

      if (isOnline && !isNavigated) {
        startSplashTimer();
      }
    });
  }

  void startSplashTimer() {
    Future.delayed(const Duration(seconds: 5), () {
      if (isOnline && !isNavigated) {
        setState(() {
          isNavigated = true;
        });
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const WelcomePage()));
      }
    });
  }

  TextStyle getTitleStyle(Locale? locale) {
    return locale?.languageCode == 'ar'
        ? GoogleFonts.tajawal(
            fontWeight: FontWeight.bold,
          )
        : GoogleFonts.oswald(
            fontWeight: FontWeight.bold,
          );
  }

  TextStyle getSubtitleStyle(Locale? locale) {
    return locale?.languageCode == 'ar'
        ? GoogleFonts.tajawal(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          )
        : GoogleFonts.oswald(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Locale? currentLocale = Get.locale;
    TextStyle titleStyle = getTitleStyle(currentLocale);
    TextStyle subtitleStyle = getSubtitleStyle(currentLocale);

    return Scaffold(
      backgroundColor: Black,
      body: Center(
        child: isOnline
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.h),
                  Image.asset(
                    Logo,
                    height: 40.h,
                    width: 90.w,
                  ),
                  SizedBox(height: 10.h),
                  CustomGradientText(
                    "KASR ELKBABGI".tr,
                    gradient: LinearGradient(
                      colors: [BlackGold, WhiteGold],
                    ),
                    style: titleStyle.copyWith(
                      fontSize: 27.sp,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    "Not just a restaurant".tr,
                    style: subtitleStyle,
                  ),
                  SizedBox(height: 5.h),
                  Lottie.network(
                    "https://lottie.host/69101d1e-3253-494e-8c12-8e24449e5d2c/kCln0TfOJj.json",
                    width: 50.w,
                    height: 20.h,
                    onLoaded: (composition) {},
                  ),
                ],
              )
            : Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Image.asset(
                    NoConnection,
                    width: 80.w,
                    height: 35.h,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "Unable to connect to the internet".tr,
                    style: getTitleStyle(currentLocale).copyWith(
                      color: Colors.red,
                      fontSize: 20.sp,
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
