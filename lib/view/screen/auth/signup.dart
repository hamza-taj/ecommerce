import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
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
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      
      body: ListView(
        children: [
          CustomStackAuth(title: "28".tr,colorstack: AppColor.lightSkyBlue,),
         CustomeFormFiledAuth(
          mycontroller: controller.username,
            title: "29".tr,
            hinttitle:  "30".tr,
            iconfiled: Icons.person,
          ),
         CustomeFormFiledAuth(

          mycontroller: controller.email,
            title: "17".tr,
            hinttitle:  "18".tr,
            iconfiled: Icons.email,
          ),
          CustomeFormFiledAuth(
            mycontroller: controller.phone,
             title: "31".tr,
            hinttitle:  "32".tr,
            iconfiled: Icons.phone,
          ),
          CustomeFormFiledAuth(
            mycontroller: controller.password,
            title:  "19".tr,
            hinttitle:  "20".tr,
            iconfiled: Icons.lock,
          ),
          
          CustomeButtonAuth(titlebutton: "28".tr,onPressed: () {
            controller.signup();
          },),
          CustomeCreatAccountAuth(
            title: "33".tr,
            titleaccount: "21".tr,
            onTap: () {
              controller.goToLogin();
            },
          ),
        ],
      ),
    );
  }
}