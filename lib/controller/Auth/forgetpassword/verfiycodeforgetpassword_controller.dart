import 'package:ecommerce/core/constants/routesname.dart';

import 'package:get/get.dart';

abstract class VerifyCodeForgetPasswordContorller extends GetxController {
  checkcode();
  goToRestPassword();
}

class VerifyCodeForgetPasswordContorllerImp
    extends VerifyCodeForgetPasswordContorller {
  late String verfiycode;

  @override
  goToRestPassword() {
    Get.offNamed(AppRoute.resetpassword);
  }

  @override
  checkcode() {}

  @override
  void onInit() {
    super.onInit();
  }
}
