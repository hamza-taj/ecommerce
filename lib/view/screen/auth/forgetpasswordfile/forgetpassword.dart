import 'package:ecommerce/controller/auth/forgetpassword/forgetpassword_controller.dart';
import 'package:ecommerce/core/constants/appimageassest.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customformfiledauth.dart';
import 'package:ecommerce/view/widget/auth/forgetpassword/customedescrptionforget.dart';
import 'package:ecommerce/view/widget/auth/forgetpassword/custometitleforget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(
      ForgetPasswordControllerImp(),
    );
    return Scaffold(
      body: ListView(
        children: [
          CustomeTitleForgetPassword(title: "27".tr),
          CustomeDiscrptionForgetPassword(title: "35".tr),
          Image.asset(Appimageassest.forgetpassword, height: 300),
          CustomeFormFiledAuth(
            title: "17".tr,
            hinttitle: "18".tr,
            iconfiled: Icons.email,
            mycontroller: controller.email,
          ),
          SizedBox(height: 25),
          CustomeButtonAuth(titlebutton: "34".tr,onPressed: () {
            controller.goToVerifyCode();
          },),
        ],
      ),
    );
  }
}
