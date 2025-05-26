//import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/constants/routesname.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerifyCode();

}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email = TextEditingController();

  @override
  goToVerifyCode() {
 Get.offNamed(AppRoute.verfiycodeforgetpassword);
  }

  @override
  checkEmail() {}

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

}
