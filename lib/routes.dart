import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/middleware/mymiddleware.dart';
import 'package:ecommerce/view/screen/forgetpasswordfile/forgetpassword.dart';
import 'package:ecommerce/view/screen/forgetpasswordfile/resetpassword.dart';
import 'package:ecommerce/view/screen/forgetpasswordfile/successresetpassword.dart';
import 'package:ecommerce/view/screen/forgetpasswordfile/verifycodeforgetpassword.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/signup/signup.dart';
import 'package:ecommerce/view/screen/auth/signup/successsigup.dart';
import 'package:ecommerce/view/screen/auth/signup/verifycodesignup.dart';
import 'package:ecommerce/view/screen/homescreen.dart';
import 'package:ecommerce/view/screen/itmes/items.dart';
import 'package:ecommerce/view/screen/language/language.dart';
import 'package:ecommerce/view/screen/onboardingpage/onboardingpage.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? getPages = [
  //? Start App:
  GetPage(name: "/"                                  , page: () =>     Language(), 
  
   middlewares: [MyMiddleWare()]
  
  ),

 //? Test 
 // GetPage(name: "/"                                  , page: () =>     TestView()),

  //? OnBoarding Page:
  GetPage(name: AppRoute.onboarding                  , page: () =>     OnBordingPage()),

  //? Auth Pages:
  GetPage(name: AppRoute.login                       , page: () =>     Login()),
  GetPage(name: AppRoute.signup                      , page: () =>     SignUp()),
  GetPage(name: AppRoute.verfiycodsignup             , page: () =>     VerifyCodeSignUp()),
  GetPage(name: AppRoute.successsignup               , page: () =>     SuccessSignUp()),
  GetPage(name: AppRoute.forgetpassword              , page: () =>     ForgetPassword()),
  GetPage(name: AppRoute.verifycodeforgetpassword    , page: () =>     VerifyCodeForgetPassword() ),
  GetPage(name: AppRoute.resetpassword               , page: () =>     ResetPassword()),
  GetPage(name: AppRoute.successresetpassword        , page: () =>     SuccessResetPassword(),
  ),

  //? Home Page:
  GetPage(name: AppRoute.home                        , page: () =>     HomeScreen()),

  //? Items
  GetPage(name: AppRoute.items                        , page: () =>     ItemsPage()),
];
