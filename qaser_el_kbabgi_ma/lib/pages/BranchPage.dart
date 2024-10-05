/*import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:qaser_el_kbabgi_restaurant/components/branchButton.dart';
import 'package:qaser_el_kbabgi_restaurant/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class branchScreen extends StatelessWidget {
  const branchScreen({super.key});

  void FifthSettlementBranch() async {
    if (await canLaunch("https://maps.app.goo.gl/yZLWFK96uJ23LSXm8")) {
      await launch("https://maps.app.goo.gl/yZLWFK96uJ23LSXm8");
    } else {
      throw 'Could not launch this branch';
    }
  }

  void SheikhZayedCityBranch() async {
    if (await canLaunch("https://maps.app.goo.gl/yCmWMsKCbkFGByFb8")) {
      await launch("https://maps.app.goo.gl/yCmWMsKCbkFGByFb8");
    } else {
      throw 'Could not launch this branch';
    }
  }

  void NorthCoastBranch() async {
    if (await canLaunch("https://maps.app.goo.gl/dS57eNTJrreKzE5v7")) {
      await launch("https://maps.app.goo.gl/dS57eNTJrreKzE5v7");
    } else {
      throw 'Could not launch this branch';
    }
  }

  void MadinatyBranch() async {
    if (await canLaunch("https://maps.app.goo.gl/pmPMKt8C2UaJvo3n7")) {
      await launch("https://maps.app.goo.gl/pmPMKt8C2UaJvo3n7");
    } else {
      throw 'Could not launch this branch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: background,
        title: Text(
          "Our Branches".tr,
          style: TextStyle(color: white),
        ),
      ),
      backgroundColor: background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 2.h,
          ),
          branchButton(
              onTap: () => FifthSettlementBranch(),
              cityName: "Fifth Settlement".tr,
              branchImage: "images/Fifth Settlement.png"),
          SizedBox(
            height: 0.5.h,
          ),
          branchButton(
              onTap: () => SheikhZayedCityBranch(),
              cityName: "Sheikh Zayed City".tr,
              branchImage: "images/Sheikh Zayed City.png"),
          SizedBox(
            height: 0.5.h,
          ),
          branchButton(
              onTap: () => NorthCoastBranch(),
              cityName: "North Coast".tr,
              branchImage: "images/North Coast.png"),
          SizedBox(
            height: 0.5.h,
          ),
          branchButton(
              onTap: () => MadinatyBranch(),
              cityName: "Madinaty".tr,
              branchImage: "images/Madinaty.png"),
        ],
      ),
    );
  }
}
*/