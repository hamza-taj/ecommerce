import 'package:ecommerce/controller/Auth/login_cotroller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/constants/appimageassest.dart';
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
      body: ListView(
        children: [
          CustomStackAuth(title: "21".tr,colorstack: AppColor.babyBlue,),
          CustomeFormFiledAuth(
            mycontroller: controller.email,
            title: "17".tr,
            hinttitle:  "18".tr,
            iconfiled: Icons.email,
          ),
          CustomeFormFiledAuth(
            mycontroller: controller.password,
            title:  "19".tr,
            hinttitle:  "20".tr,
            iconfiled: Icons.lock,
          ),
          CustomeTitleForgetPassword(title: "27".tr,),
          CustomeButtonAuth(titlebutton: "21".tr),
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
    );
  }
}
