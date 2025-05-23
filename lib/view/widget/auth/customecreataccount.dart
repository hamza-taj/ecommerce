import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeCreatAccountAuth extends StatelessWidget {
  final String title;
  final String titleaccount;
  final void Function()? onTap;
  const CustomeCreatAccountAuth({
    super.key,
    required this.title,
    required this.titleaccount,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    MyServiceApp myServiceApp = Get.find();
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: sharPerfLand == "en" ? 'Mulish' : "Cairo",
              fontSize: sharPerfLand == "en" ?14 : 12
            ),
          ),
          SizedBox(width: 20),
          InkWell(
            onTap: onTap,
            child: Text(
              titleaccount,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.black,
                 fontFamily: sharPerfLand == "en" ? 'Mulish' : "Cairo",
              fontSize: sharPerfLand == "en" ?14 : 12
              ),
            ),
          ),
        ],
      ),
    );
  }
}
