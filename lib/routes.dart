import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/view/screen/auth/forgetpasswordfile/forgetpassword.dart';
import 'package:ecommerce/view/screen/auth/forgetpasswordfile/resetpassword.dart';
import 'package:ecommerce/view/screen/auth/forgetpasswordfile/successresetpassword.dart';
import 'package:ecommerce/view/screen/auth/forgetpasswordfile/verifycodeforgetpassword.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/signup/signup.dart';
import 'package:ecommerce/view/screen/auth/signup/successsigup.dart';
import 'package:ecommerce/view/screen/auth/signup/verfiycodesignup.dart';
import 'package:ecommerce/view/screen/home.dart';
import 'package:ecommerce/view/screen/onboardingpage/onboardingpage.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
   AppRoute.onboarding: (context)                 => OnBordingPage(),
   AppRoute.login: (context)                      => Login(),
   AppRoute.signup: (context)                     => SignUp(),
   AppRoute.forgetpassword: (context)             => ForgetPassword(),
   AppRoute.verfiycodeforgetpassword: (context)   => VerifyCodeForgetPassword(),
   AppRoute.resetpassword: (context)              => ResetPassword(),
   AppRoute.successresetpassword: (context)       => SuccessResetPassword(),
   AppRoute.successsignup: (context)              => SuccessSignUp(),
   AppRoute.verfiycodsignup: (context)            => VerifyCodeSignUp(),
   AppRoute.home: (context)                       => Home(),
  

};