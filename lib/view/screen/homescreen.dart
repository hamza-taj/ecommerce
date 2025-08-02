import 'package:ecommerce/controller/homescreen.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/view/widget/home/custombottomappbarhome.dart';
import 'package:ecommerce/view/widget/home/customfloatingbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder:
          (controller) => Scaffold(
            backgroundColor: AppColor.white,
            floatingActionButton: CustomFloatingButton(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: CustomBottomAppBarHome(),
            body: controller.listpages.elementAt(controller.currentPage),
          ),
    );
  }
}
