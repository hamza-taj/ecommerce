import 'package:ecommerce/core/constants/routesname.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpContorller extends GetxController {
  checkcode();
  goToSuccessSignUp();
}

class VerifyCodeSignUpContorllerImp extends VerifyCodeSignUpContorller {
  late String verfiycode;

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successsignup);
  }

  @override
  checkcode() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }
}
