import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware {

  MyServiceApp myServiceApp = Get.find();          //! Services

  @override
  int? get priority => 1; 

  @override
  RouteSettings? redirect(String? route) {
    if (myServiceApp.sharedPreferences.getString("step") == "2") {
      return RouteSettings(name: AppRoute.home);
    }
    if (myServiceApp.sharedPreferences.getString("step") == "1") {
      return RouteSettings(name: AppRoute.login);
    }
    return null;
  }
}
