//import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/constants/notification_card.dart';
import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/data/datasources/remote/forgetpassword/checemail_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {

  checkEmail();
 
}

class ForgetPasswordControllerImp extends ForgetPasswordController {

  //! Controller TexFormField
  late TextEditingController email = TextEditingController();

  //! GlobalKey for Form
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  //! Backend and Data
  StatusRequest statusRequest = StatusRequest.none; 
  CheckEmailData checkEmailData = CheckEmailData(Get.find());


  //! Check Email
  @override
  checkEmail() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postData(email.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoute.verifycodeforgetpassword , arguments: { "email": email.text});
        } 
        
        else {
          showNotificationCard("57".tr, "61".tr);
          statusRequest = StatusRequest.failure;
        }
        update();
      }
    }
  }

  //! Life Cycle
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
