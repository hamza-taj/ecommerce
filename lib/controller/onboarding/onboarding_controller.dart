import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasources/static/static.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  nextPage();
  onChangePage(int index);
}

class OnBoardingControllerImp extends OnBoardingController {

  MyServiceApp myServiceApp = Get.find();          //! Services
  late PageController pageController;
  int currentPage = 0;
  @override
  void onChangePage(int index) {
    currentPage = index;
    update();
  }

  @override
  nextPage() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      myServiceApp.sharedPreferences.setString("onboarding", "1");    //! for Middle Ware and Storg Vlaue in SharPerferences
      Get.offAllNamed(AppRoute.login);
    
    } else {
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
