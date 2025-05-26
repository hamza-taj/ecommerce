import 'package:ecommerce/core/constants/routesname.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signup();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController username = TextEditingController();
  late TextEditingController email = TextEditingController();
  late TextEditingController phone = TextEditingController();
  late TextEditingController password = TextEditingController();

  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
  }

  @override
  signup() {
    Get.offAllNamed(AppRoute.successsignup);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
