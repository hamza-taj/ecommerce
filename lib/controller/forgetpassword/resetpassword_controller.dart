import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/constants/notification_card.dart';
import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/data/datasources/remote/forgetpassword/resetpassword_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordContorller extends GetxController {

  resetpassword();

}

class ResetPasswordContorllerImp extends ResetPasswordContorller {

  //! Controller TextFormField
  late TextEditingController password = TextEditingController();
  late TextEditingController repassword = TextEditingController();

  //! GlobalKey for Form
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  //! show password
  bool isshowpassword = true;
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  //! Backend and Data
  String? email;
  StatusRequest statusRequest = StatusRequest.none; 
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());

  //! Reset Password
  @override
  resetpassword() async {
    if (password.text != repassword.text) {
      return showNotificationCard("57".tr, "62".tr);
    }

    if (formstate.currentState!.validate()) {
      if (formstate.currentState!.validate()) {
        statusRequest = StatusRequest.loading;
        update();
        var response = await resetPasswordData.postData(email!, password.text);
        statusRequest = handlingData(response);
        if (StatusRequest.success == statusRequest) {
          if (response['status'] == "success") {
            Get.offNamed(AppRoute.successresetpassword);
          } else {
            showNotificationCard("57".tr, "63".tr);
            statusRequest = StatusRequest.failure;
          }
        }
      } else {
        // ignore: avoid_print
        print("not found");
      }
    } 
  }
  
  //! Life Cycle
  @override
  void onInit() {
    email = Get.arguments['email'];
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
