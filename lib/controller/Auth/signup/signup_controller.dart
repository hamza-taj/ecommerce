import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/constants/notification_card.dart';
import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/data/datasources/remote/auth/signup_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {

  signup();
  goToLogin();

}

class SignUpControllerImp extends SignUpController {
 
  //! Controller TextFormField
  late TextEditingController username = TextEditingController();
  late TextEditingController email = TextEditingController();
  late TextEditingController phone = TextEditingController();
  late TextEditingController password = TextEditingController();

  //!  Back End  and Data
  SignupData signupData  = SignupData(Get.find());
  List data = [] ;                           
  StatusRequest statusRequest = StatusRequest.none;

  //! Global Key
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  //! Show Password
  bool isshowpassword = true;
  showpassword(){
    isshowpassword = isshowpassword == true ? false : true ;
    update();
    }
  
  //! Go To Login

  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
  }


   //! Go To VerfiyCode
  @override
  signup() async {
  if (formstate.currentState!.validate()) {
  statusRequest  = StatusRequest.loading ;
  update();      
  var response   = await signupData.postData( username.text , email.text , password.text , phone.text );
  statusRequest  = handlingData(response);  
  if ( StatusRequest.success == statusRequest ) {
  if( response ['status'] ==  "success" )  {
     Get.offAllNamed(AppRoute.verfiycodsignup , arguments: {"email": email.text} );           
   }
   else {
    showNotificationCard("57".tr, "58".tr);
    statusRequest = StatusRequest.failure;
   }
  }
  update();
    } 
  }
  
  //! Life Cycle
  @override
  void onInit() {
    username   = TextEditingController();
    email      = TextEditingController();
    phone      = TextEditingController();
    password   = TextEditingController();
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
