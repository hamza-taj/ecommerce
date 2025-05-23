import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeFormFiledAuth extends StatelessWidget {
  final String title;
  final String hinttitle;
  final IconData? iconfiled;
  final TextEditingController? mycontroller;

  const CustomeFormFiledAuth({
    super.key,
    required this.title,
    required this.hinttitle,
    this.iconfiled,
    required this.mycontroller,

  });

  @override
  Widget build(BuildContext context) {
    MyServiceApp myServiceApp = Get.find();
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 45, vertical: 5),
      child: TextFormField(
        controller: mycontroller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10),
          label: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: sharPerfLand == "en" ? 14 : 12,
              fontFamily: sharPerfLand == "en" ? "Mulish" : "Cairo",
            ),
          ),
          suffixIcon: Icon(iconfiled, color: AppColor.babyBlue),

          hintText: hinttitle,
          hintStyle: TextStyle(fontSize: 12),
          focusColor: AppColor.babyBlue,
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(strokeAlign: 3, color: AppColor.babyBlue),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}
