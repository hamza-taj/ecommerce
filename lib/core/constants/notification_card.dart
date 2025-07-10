import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

showNotificationCard( String title , String subtitle){
   Get.defaultDialog(
  title: "",
  content: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.warning_amber_rounded, size: 60, color: AppColor.babyBlue),
       const SizedBox(height: 10),
      Text(
        title,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
     
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
        child: Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14),
        ),
      ),
 
    ],
  ),
  radius: 30,
);
}