 import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeItemsCount extends StatelessWidget {
  final String titleappbar;
   const CustomeItemsCount({super.key, required this.titleappbar});

   @override
   Widget build(BuildContext context) {
    MyServiceApp myService = Get.find();
     return Container(
            margin: EdgeInsets.symmetric(horizontal: 35 , vertical: 8),
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              textAlign: TextAlign.center,
              titleappbar,
              style: myService.sharedPreferences.getString("lang") == "ar"
                  ? TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColor.white)
                  : TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: AppColor.white),
            ),
          );
   }
 }