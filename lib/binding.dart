import 'package:ecommerce/controller/auth/forgetpassword/forgetpassword_controller.dart';
import 'package:ecommerce/controller/auth/forgetpassword/resetpassword_controller.dart';
import 'package:ecommerce/controller/auth/signup/signup_controller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {

  Get.lazyPut(() => SignUpControllerImp() , fenix: true);                      //! Signup

  Get.lazyPut(() => ForgetPasswordControllerImp(), fenix: true);               //! Forget Password
  
  Get.lazyPut(() => ResetPasswordContorllerImp(),fenix: true);                 //! Reset Password
  }

}