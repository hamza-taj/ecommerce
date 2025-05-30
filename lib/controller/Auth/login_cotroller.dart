import 'package:ecommerce/core/constants/routesname.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email    = TextEditingController();
  late TextEditingController password = TextEditingController();

  GlobalKey<FormState> formstate = GlobalKey<FormState>();


  bool isshowpassword = true ;

  showpassword(){
    isshowpassword = isshowpassword == true ? false : true;
    // Refersh UI
    update();
  }

  @override
  goToSignUp() {
    Get.offAllNamed(AppRoute.signup);
  }

  @override
  login() {
    if (formstate.currentState!.validate()) {

      Get.offNamed(AppRoute.home);

    } 
    else {

      print("not found");

    }
  }

  @override
  void onInit() {
    email    = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {

    email.dispose();
    password.dispose();

    super.dispose();
  }

  @override
  goToForgetPassword() {

    Get.toNamed(AppRoute.forgetpassword);
    
  }
}
