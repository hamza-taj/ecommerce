import 'package:ecommerce/controller/auth/signup/signup_controller.dart';
import 'package:ecommerce/core/classes/handlingdataview.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/functions/alertexitapp.dart';
import 'package:ecommerce/core/functions/validinput.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customecreataccount.dart';
import 'package:ecommerce/view/widget/auth/customformfiledauth.dart';
import 'package:ecommerce/view/widget/auth/customstackauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (!didPop) {
            alertExitApp();
          }
        },

        child: GetBuilder<SignUpControllerImp>(
          builder:
              (controller) => HandlingDataRequsest(
                statusRequest: controller.statusRequest,
                widget: Form(
                  key: controller.formstate,
                  child: ListView(
                    children: [
                      CustomStackAuth(
                        title: "28".tr,
                        colorstack: AppColor.lightSkyBlue,
                      ),
                      CustomeFormFiledAuth(
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          return validInput(value!, 10, 30, "username");
                        },
                        mycontroller: controller.username,
                        title: "29".tr,
                        hinttitle: "30".tr,
                        iconfiled: Icons.person,
                      ),
                      CustomeFormFiledAuth(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          return validInput(value!, 15, 50, "email");
                        },

                        mycontroller: controller.email,
                        title: "17".tr,
                        hinttitle: "18".tr,
                        iconfiled: Icons.email,
                      ),
                      CustomeFormFiledAuth(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          return validInput(value!, 10, 10, "phone");
                        },
                        mycontroller: controller.phone,
                        title: "31".tr,
                        hinttitle: "32".tr,
                        iconfiled: Icons.phone,
                      ),
                      GetBuilder<SignUpControllerImp>(
                        builder:
                            (controller) => CustomeFormFiledAuth(
                              obscureText: controller.isshowpassword,
                              onTap: () {
                                controller.showpassword();
                              },
                              keyboardType: TextInputType.visiblePassword,
                              validator: (value) {
                                return validInput(value!, 10, 50, "password");
                              },
                              mycontroller: controller.password,
                              title: "19".tr,
                              hinttitle: "20".tr,
                              iconfiled: Icons.lock,
                            ),
                      ),

                      CustomeButtonAuth(
                        titlebutton: "28".tr,
                        onPressed: () {
                          controller.signup();
                        },
                      ),
                      CustomeCreatAccountAuth(
                        title: "33".tr,
                        titleaccount: "21".tr,
                        onTap: () {
                          controller.goToLogin();
                        },
                      ),
                    ],
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
