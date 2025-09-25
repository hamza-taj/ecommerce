import 'package:ecommerce/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int index);
}

class HomeScreenControllerImp extends HomeScreenController {
  //? Move to Page
  int currentPage = 0;
  @override
  changePage(int index) {
    currentPage = index;
    update();
  }

  //? List Widgets
  List<Widget> listpages = [
    Home(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Setting"))],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Notifications"))],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Profile"))],
    ),
  ];

  List<Map<String , dynamic>> listnavigator = [
    { "name" : "Home"          , "icon":Icons.home_outlined},
    { "name" : "Setting"       , "icon":Icons.settings_outlined},
    { "name" : "Alert"         , "icon":Icons.notifications_active_outlined},
    { "name" : "Profile"       , "icon":Icons.person_outline},
  ];
}
