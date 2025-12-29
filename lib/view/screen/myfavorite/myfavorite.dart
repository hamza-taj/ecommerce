import 'package:ecommerce/controller/favaorite/myfavorite_controller.dart';
import 'package:ecommerce/core/classes/handlingdataview.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/view/widget/myfavorite/customappbarfav.dart';
import 'package:ecommerce/view/widget/myfavorite/customcardlistfavorite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MyFavoriteController());
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: GetBuilder<MyFavoriteController>(
          builder:
              (controller) => ListView(
                children: [
                  CustomAppBarFavorite(titleappbar: "64".tr),

                  HandlingDataView(
                    statusRequest: controller.statusRequest!,
                    widget: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(), 
                      itemCount: controller.data.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 8,
                        childAspectRatio: 0.75,
                      ),
                      itemBuilder: (context, index) => CustomCardListFavorite(
                        myfavoriteModel: controller.data[index],
                     
                      ),
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
