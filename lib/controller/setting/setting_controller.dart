import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController{
MyServiceApp myServiceApp = Get.find();

  logout() {
    myServiceApp.sharedPreferences.clear();
    Get.offAllNamed(AppRoute.language);
  }

    List<Map<String , dynamic>> listsetting = [


    
    { "name" : "74".tr                        ,  "icon":Icons.location_on_outlined },       
    { "name" : "75".tr                        ,  "icon":Icons.info_outline },
    { "name" : "76".tr                        ,  "icon":Icons.person_outline },
    { "name" : "77".tr                        ,  "icon":Icons.logout_outlined },

  ];

}