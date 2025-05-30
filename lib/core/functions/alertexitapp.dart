import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    backgroundColor: Colors.white,
    titlePadding: EdgeInsets.symmetric(vertical: 15),
    title: "54".tr,
    titleStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    middleText: "55".tr,
    middleTextStyle: TextStyle(fontSize: 14),
    actions: [

      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          elevation: 0,
          minimumSize: const Size(100, 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          exit(0);
        },
        child: Text("44".tr),
      ),

      SizedBox(width: 10),

      ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[200],
          foregroundColor: Colors.black87,
          elevation: 0,
          minimumSize: const Size(100, 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          Get.back();
        },
        child: Text("56".tr),
      ),
    ],
  );
  
  return Future.value(true);
}
