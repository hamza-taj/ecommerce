import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/constants/notification_card.dart';
import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasources/remote/auth/login_data.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  //? Controller TexFormField

  late TextEditingController email = TextEditingController();
  late TextEditingController password = TextEditingController();

  //? GlobalKey

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  //? Show Password
  //
  bool isshowpassword = true;
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    // Refersh UI
    update();
  }

  //! Back End and Data
  LoginData logindata = LoginData(Get.find());
  StatusRequest statusRequest = StatusRequest.none; 

  //? Services and Storage variable

    MyServiceApp myServiceApp = Get.find();

  //? Move To SignUp Page

  @override
  goToSignUp() {
    Get.offAllNamed(AppRoute.signup);
  }

  //? Move To Home Page

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await logindata.postData(email.text, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          myServiceApp.sharedPreferences.setString( "id" ,              response['data']['users_id'].toString());
          myServiceApp.sharedPreferences.setString( "username" ,        response['data']['users_name'].toString());
          myServiceApp.sharedPreferences.setString( "email" ,           response['data']['users_email'].toString());
          myServiceApp.sharedPreferences.setString( "phone" ,           response['data']['users_phone '].toString());
          myServiceApp.sharedPreferences.setString( "step" , "2");
          Get.offNamed(AppRoute.home);
        } else {
          showNotificationCard("57".tr, "60".tr);
          statusRequest = StatusRequest.failure;
        }
        update();
      }
    }
  }

  @override
  void onInit() {

    FirebaseMessaging.instance.getToken().then((value) {
      print("value of token is $value");
      // ignore: unused_local_variable
      String? token = value;
    });
    email = TextEditingController();
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
