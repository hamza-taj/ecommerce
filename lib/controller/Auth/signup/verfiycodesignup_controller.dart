import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/constants/notification_card.dart';
import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/data/datasources/remote/auth/verfiycodesignup_data.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpContorller extends GetxController {

  goToSuccessSignUp(String verfiycodesignup);

}

class VerifyCodeSignUpContorllerImp extends VerifyCodeSignUpContorller {

  //! Backend and Data
  VerifyCodeSignupData verifyCodeSignupData = VerifyCodeSignupData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  String? email;

  //! Go To Success SignUp
  @override
  goToSuccessSignUp(verifycodesignup) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeSignupData.postData(
      email!,
      verifycodesignup,
    );
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.successsignup);
      } else {
        showNotificationCard("57".tr, "59".tr);
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
 
 //! Life Cycle
  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }

  //! Resend Code
  resendCode() {
    Get.snackbar(
      "45".tr,
      "70".tr,
      backgroundColor: AppColor.primaryColor,
      colorText: AppColor.darkBlue,
      snackPosition: SnackPosition.BOTTOM,
    );
    verifyCodeSignupData.resendcodeData(email!);
  }
}
