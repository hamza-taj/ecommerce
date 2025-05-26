

import 'package:ecommerce/core/constants/appimageassest.dart';
import 'package:ecommerce/view/widget/auth/forgetpassword/customedescrptionforget.dart';
import 'package:ecommerce/view/widget/auth/forgetpassword/customeoptauth.dart';
import 'package:ecommerce/view/widget/auth/forgetpassword/custometitleforget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class VerifyCodeForgetPassword extends StatelessWidget {
  const VerifyCodeForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(
      body: ListView(
        children: [
          CustomeTitleForgetPassword(title: "36".tr),
          Image.asset(Appimageassest.verfiycode, height: 250),
          SizedBox(height: 50),
          CustomeDiscrptionForgetPassword(title: "37".tr),
          CustomeOPTAuth(),
        ],
      ),
    );
  }
}
