import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/signup.dart';
import 'package:ecommerce/view/screen/onboardingpage/onboardingpage.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
   AppRoute.onboarding: (context) => OnBordingPage(),
   AppRoute.login: (context) => Login(),
   AppRoute.signup: (context) => SignUp(),

};