import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:qaser_el_kbabgi_ma/models/LanguageModel.dart';
import 'package:qaser_el_kbabgi_ma/pages/SplashPage.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: localstring(),
      locale: const Locale("en"),
      home: const SplashPage(),
    );
  }
}
