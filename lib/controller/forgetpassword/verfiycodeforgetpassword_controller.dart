import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/constants/notification_card.dart';
import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/data/datasources/remote/forgetpassword/verfiycode_data.dart';

import 'package:get/get.dart';

abstract class VerifyCodeForgetPasswordContorller extends GetxController {
  
  checkcode( String verifycode );

}

class VerifyCodeForgetPasswordContorllerImp extends VerifyCodeForgetPasswordContorller {


  //! Backend and Data

  VerifyCodeData verifyCodeData = VerifyCodeData(Get.find());
  StatusRequest statusRequest = StatusRequest.none; 
  String? email;

  

  @override
  checkcode(verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeData.postData(
      email!,
      verifycode,
    );
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {

         Get.offNamed( AppRoute.resetpassword , arguments: {"email": email} );

      } 

      else {
        showNotificationCard("57".tr, "59".tr);
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }
}
