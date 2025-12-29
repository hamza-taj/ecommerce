import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/constants/appimageassest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopLevelSetting extends StatelessWidget {
  const TopLevelSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 60),
      child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(color: AppColor.primaryColor, height: Get.width / 2),
              Positioned(
                top: Get.width / 3,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColor.white,
                  ),
                  child: CircleAvatar(
                    radius: Get.width / 6.5,
                    backgroundColor: AppColor.blueGray,
                    backgroundImage: AssetImage(Appimageassest.profile),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}