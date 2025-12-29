import 'package:ecommerce/controller/auth/signup/verfiycodesignup_controller.dart';
import 'package:ecommerce/core/classes/handlingdataview.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/constants/appimageassest.dart';
import 'package:ecommerce/view/widget/forgetpassword/customedescrptionforget.dart';
import 'package:ecommerce/view/widget/forgetpassword/customeoptauth.dart';
import 'package:ecommerce/view/widget/forgetpassword/custometitleforget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSignUpContorllerImp());
    return Scaffold(
      body: GetBuilder<VerifyCodeSignUpContorllerImp>(
        builder:
            (controller) => HandlingDataRequsest(
              statusRequest: controller.statusRequest,
              widget: ListView(
                children: [
                  CustomeTitleForgetPassword(title: "36".tr),
                  Image.asset(Appimageassest.verfiycode, height: 250),
                  SizedBox(height: 50),
                  CustomeDiscrptionForgetPassword(
                    title: "${"37".tr}    ${controller.email}",
                  ),
                  CustomeOPTAuth(
                    onSubmit: (String verificationCode) {
                      controller.goToSuccessSignUp(verificationCode);
                    },
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 90, vertical:20),
                    child: MaterialButton(
                      onPressed: () {
                        controller.resendCode();
                      },
                      color: AppColor.primaryColor,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),

                      child: Text(
                        "69".tr,
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
