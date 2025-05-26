import 'package:ecommerce/controller/auth/forgetpassword/resetpassword_controller.dart';
import 'package:ecommerce/core/constants/appimageassest.dart';
import 'package:ecommerce/view/widget/auth/customformfiledauth.dart';
import 'package:ecommerce/view/widget/auth/forgetpassword/customedescrptionforget.dart';
import 'package:ecommerce/view/widget/auth/forgetpassword/custometitleforget.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordContorllerImp controller = Get.put(
      ResetPasswordContorllerImp(),
    );
    return Scaffold(
      body: ListView(
        children: [
          CustomeTitleForgetPassword(title: "38".tr),
          Image.asset(Appimageassest.resetpassword, height: 300),

          CustomeDiscrptionForgetPassword(
            title:
                "39".tr,
          ),
          SizedBox(height: 20),
          CustomeFormFiledAuth(
            title: "40".tr,
            hinttitle: "41".tr,
            iconfiled: Icons.lock_clock_rounded,
            mycontroller: controller.password,
          ),
          CustomeFormFiledAuth(
            title: "42".tr,
            hinttitle: "43".tr,
            iconfiled: Icons.lock_clock_rounded,
            mycontroller: controller.repassword,
          ),
          SizedBox(height: 20),
          CustomeButtonAuth(titlebutton: "44".tr,onPressed: () {
            controller.goToSuccessPassword();
          },)
        ],
      ),
    );
  }
}
