import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDescrptionSuccess extends StatelessWidget {
  final String title;
  const CustomDescrptionSuccess({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    MyServiceApp myServiceApp = Get.find();
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 70),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: sharPerfLand == "en" ? 16 : 14,
          color: Colors.grey[600],
          fontFamily: sharPerfLand == "en" ? "Mulish" : "Cairo",
          height: 2,
        ),
      ),
    );
  }
}
