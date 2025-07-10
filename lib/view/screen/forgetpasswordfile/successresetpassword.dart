import 'package:ecommerce/controller/forgetpassword/successforgetpassword_controller.dart';
import 'package:ecommerce/core/constants/appimageassest.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/forgetpassword/customdescrptionsuccess.dart';

import 'package:ecommerce/view/widget/forgetpassword/custometitleforget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessForgetPasswordControllerImp controller = Get.put(
      SuccessForgetPasswordControllerImp(),
    );
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Image.asset(Appimageassest.successreset, height: 150),
          ),
          CustomeTitleForgetPassword(title: "45".tr),
          CustomDescrptionSuccess(title: "46".tr),
          CustomeButtonAuth(
            titlebutton: "16".tr,
            onPressed: () {
               controller.goToLogin();
            },
          ),
        ],
      ),
    );
  }
}
