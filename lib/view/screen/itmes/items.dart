
import 'package:ecommerce/controller/items/itmes_controller.dart';
import 'package:ecommerce/core/classes/handlingdataview.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/data/model/items/itemsmodel.dart';
import 'package:ecommerce/view/widget/customappbar.dart';
import 'package:ecommerce/view/widget/items/customcardlistitems.dart';
import 'package:ecommerce/view/widget/items/customlistcategoriesitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(ItemsControllerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            CustomAppBar(
              titleappbar: "Find Product",
              iconappbar: Icons.notifications_active_outlined,
            ),
            CustomListCategoriesItems(),
            SizedBox(height: 10),
            GetBuilder<ItemsControllerImp>(
              builder:
                  (controller) => HandlingDataView(
                    statusRequest: controller.statusRequest!,
                    widget: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.data.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.69,
                      ),
                      itemBuilder: (context, index) {
                        return CustomCardListItems(
                          itemsmodel: ItemsModel.fromJson(
                            controller.data[index],
                          ),
                        );
                      },
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
