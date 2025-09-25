import 'package:ecommerce/controller/homescreen.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/view/widget/home/customnavigtorbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomAppBarHome extends GetView<HomeScreenControllerImp> {
  const CustomBottomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6,
      color: AppColor.blueGray,
      child: Row(
        children: [
          ...List.generate(controller.listpages.length + 1, (index) {
            int i = index > 2 ? index - 1 : index;
            return index == 2
                ? Spacer()
                : CustomNavigatorButton(
                  onPressed: () {
                    controller.changePage(i);
                  },
                  iconbutton: controller.listnavigator[i]["icon"],
                  titlebutton: controller.listnavigator[i]["name"],

                  active: controller.currentPage == i ? true : false,
                );
          }),
        ],
      ),
    );
  }
}
