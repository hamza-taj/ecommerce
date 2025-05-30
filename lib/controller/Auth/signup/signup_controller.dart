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
  

    GlobalKey <FormState> formstate = GlobalKey<FormState>();

    bool isshowpassword = true;

    showpassword(){
      isshowpassword = isshowpassword == true ? false : true ;
      update();
    }
  

  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
    
  
  }

  @override
  signup() {
     if (formstate.currentState!.validate()) {
  Get.offAllNamed(AppRoute.verfiycodsignup);
    } else{
      // ignore: avoid_print
      print("not found");
    }
  
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
