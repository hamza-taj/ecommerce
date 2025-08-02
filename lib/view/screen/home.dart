import 'package:ecommerce/controller/home/home_controller.dart';
import 'package:ecommerce/core/classes/handlingdataview.dart';
import 'package:ecommerce/view/widget/customappbar.dart';
import 'package:ecommerce/view/widget/home/customcardhome.dart';
import 'package:ecommerce/view/widget/home/customelistitems.dart';
import 'package:ecommerce/view/widget/home/customlistcategories.dart';
import 'package:ecommerce/view/widget/home/customtitlehome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
          builder: (controller) {
            return HandlingDataView(
              statusRequest: controller.statusRequest!,
              widget: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    CustomAppBar(
                      titleappbar: "Find Product",
                      iconappbar: Icons.notifications_active_outlined,
                    ),
                    CustomCardHome(
                      titlecard: "A Summer Sale",
                      subtitlecard: "CheckBack 50%",
                    ),
                    CustomTitleHome(title: "Categories"),
                    CustomListCategories(),
                    CustomTitleHome(title: "Products For You"),
                    CustomListItems(),
                  ],
                ),
              ),
            );
          },
        );
  }
}
