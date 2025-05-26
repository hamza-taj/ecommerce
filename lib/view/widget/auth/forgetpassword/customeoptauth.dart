import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ecommerce/controller/auth/forgetpassword/verfiycodeforgetpassword_controller.dart';
import 'package:get/get.dart';

class CustomeOPTAuth extends StatelessWidget {
  const CustomeOPTAuth({super.key});

  @override
  Widget build(BuildContext context) {
     VerifyCodeForgetPasswordContorllerImp controller = Get.put(
      VerifyCodeForgetPasswordContorllerImp());
    return Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: OtpTextField(
              borderRadius: BorderRadius.circular(15),

              numberOfFields: 5,

              cursorColor: AppColor.babyBlue,
              focusedBorderColor: AppColor.babyBlue,
              fillColor: AppColor.black,

              onCodeChanged: (String code) {},

              onSubmit: (String verificationCode) {
                controller.goToRestPassword();
              },
            ),
          );
  }
}