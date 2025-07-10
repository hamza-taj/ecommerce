import 'package:ecommerce/controller/forgetpassword/verfiycodeforgetpassword_controller.dart';
import 'package:ecommerce/core/classes/handlingdataview.dart';
import 'package:ecommerce/core/constants/appimageassest.dart';
import 'package:ecommerce/view/widget/forgetpassword/customedescrptionforget.dart';
import 'package:ecommerce/view/widget/forgetpassword/customeoptauth.dart';
import 'package:ecommerce/view/widget/forgetpassword/custometitleforget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCodeForgetPassword extends StatelessWidget {
  const VerifyCodeForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeForgetPasswordContorllerImp());

    return Scaffold(
      body: GetBuilder<VerifyCodeForgetPasswordContorllerImp>(
        builder:
            (controller) => HandlingDataRequsest(
              statusRequest: controller.statusRequest,
              widget: ListView(
                children: [
                  CustomeTitleForgetPassword(title: "36".tr),
                  Image.asset(Appimageassest.verfiycode, height: 250),
                  SizedBox(height: 50),
                  CustomeDiscrptionForgetPassword(title: "37".tr),
                  CustomeOPTAuth(
                    onSubmit: (String verificationCode) {
                      controller.checkcode(verificationCode);
                    },
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
