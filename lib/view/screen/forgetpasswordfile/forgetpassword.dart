import 'package:ecommerce/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:ecommerce/core/classes/handlingdataview.dart';
import 'package:ecommerce/core/constants/appimageassest.dart';
import 'package:ecommerce/core/functions/validinput.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customformfiledauth.dart';
import 'package:ecommerce/view/widget/forgetpassword/customedescrptionforget.dart';
import 'package:ecommerce/view/widget/forgetpassword/custometitleforget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ForgetPasswordControllerImp>(
        builder:
            (controller) => HandlingDataRequsest(
              statusRequest: controller.statusRequest,
              widget: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    CustomeTitleForgetPassword(title: "27".tr),
                    CustomeDiscrptionForgetPassword(title: "35".tr),
                    Image.asset(Appimageassest.forgetpassword, height: 300),
                    CustomeFormFiledAuth(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        return validInput(value!, 10, 50, "email");
                      },
                      title: "17".tr,
                      hinttitle: "18".tr,
                      iconfiled: Icons.email,
                      mycontroller: controller.email,
                    ),
                    SizedBox(height: 25),
                    CustomeButtonAuth(
                      titlebutton: "34".tr,
                      onPressed: () {
                        controller.checkEmail();
                      },
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
