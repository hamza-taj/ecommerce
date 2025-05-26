import 'package:ecommerce/core/constants/routesname.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordContorller extends GetxController {
  resetpassword();
  goToSuccessPassword();
}

class ResetPasswordContorllerImp
    extends ResetPasswordContorller {
  late TextEditingController password = TextEditingController();
  late TextEditingController repassword = TextEditingController();

  @override
  goToSuccessPassword() {
    Get.offNamed(AppRoute.successresetpassword);
  }

  @override
  resetpassword() {}

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
