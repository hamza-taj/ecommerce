import 'package:ecommerce/controller/auth/login_cotroller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/constants/appimageassest.dart';
import 'package:ecommerce/core/functions/alertexitapp.dart';
import 'package:ecommerce/core/functions/validinput.dart';
import 'package:ecommerce/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customecreataccount.dart';
import 'package:ecommerce/view/widget/auth/custometitleauth.dart';
import 'package:ecommerce/view/widget/auth/custometitleforgetpassword.dart';
import 'package:ecommerce/view/widget/auth/customformfiledauth.dart';
import 'package:ecommerce/view/widget/auth/customsocialauth.dart';
import 'package:ecommerce/view/widget/auth/customstackauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (!didPop) {
            alertExitApp();
          }
        },
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              CustomStackAuth(title: "21".tr, colorstack: AppColor.babyBlue),
              CustomeFormFiledAuth(
                validator: (val) {
                  return validInput(val!, 5, 50, "email");
                },
                keyboardType: TextInputType.emailAddress,

                mycontroller: controller.email,
                title: "17".tr,
                hinttitle: "18".tr,
                iconfiled: Icons.email,
              ),
              GetBuilder<LoginControllerImp>(
                builder:
                    (controller) => CustomeFormFiledAuth(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: controller.isshowpassword,
                      onTap: () {
                        controller.showpassword();
                      },
                      validator: (val) {
                        return validInput(val!, 5, 30, "password");
                      },
                      mycontroller: controller.password,
                      title: "19".tr,
                      hinttitle: "20".tr,
                      iconfiled: Icons.lock,
                    ),
              ),
              CustomeTitleForgetPasswordAuth(
                title: "27".tr,
                onTap: () {
                  controller.goToForgetPassword();
                },
              ),
              CustomeButtonAuth(
                titlebutton: "21".tr,
                onPressed: () {
                  controller.login();
                },
              ),
              CustomeTitleWithSocial(title: "22".tr),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomeSocialAuth(
                    titlebutton: '23'.tr,
                    imagename: Appimageassest.google,
                  ),
                  CustomeSocialAuth(
                    titlebutton: '24'.tr,
                    imagename: Appimageassest.facebook,
                  ),
                ],
              ),

              CustomeCreatAccountAuth(
                title: "25".tr,
                titleaccount: "26".tr,
                onTap: () {
                  controller.goToSignUp();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
