import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class CustomeFormFiledAuth extends StatelessWidget {
  final String title;
  final String hinttitle;
  final IconData? iconfiled;
  final TextEditingController? mycontroller;
  final TextInputType keyboardType ;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final void Function()? onTap;

  const CustomeFormFiledAuth({
    super.key,
    required this.title,
    required this.hinttitle,
    this.iconfiled,
    required this.mycontroller,
    required this.keyboardType,
    required this.validator,
    this.obscureText,
    this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    MyServiceApp myServiceApp = Get.find();
    String? sharPerfLand = myServiceApp.sharedPreferences.getString("lang");

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 45, vertical: 5),
      child: TextFormField(
        validator: validator,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false ? false : true ,
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
          suffixIcon: InkWell(onTap: onTap,child: Icon(iconfiled, color: AppColor.babyBlue),),

          hintText: hinttitle,
          hintStyle: TextStyle(fontSize: 12),
          focusColor: AppColor.babyBlue,
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(strokeAlign: 3, color: AppColor.babyBlue),
          ),
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}
