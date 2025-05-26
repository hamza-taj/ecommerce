import 'package:ecommerce/core/constants/routesname.dart';
import 'package:get/get.dart';

abstract class SuccessForgetPasswordController extends GetxController{
  goToLogin();
}



class SuccessForgetPasswordControllerImp extends SuccessForgetPasswordController {


  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }


}