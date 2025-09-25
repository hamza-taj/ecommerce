import 'package:ecommerce/controller/favaorite/favorite_controller.dart';
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
    ItemsControllerImp controllerItems =  Get.put(ItemsControllerImp());
    FavoriteController controllerFav = Get.put(FavoriteController());
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            CustomAppBar(
              titleappbar: "64".tr,
              iconappbar: Icons.favorite_outline,
              onPressedFavorite: (){
                controllerItems.goToFavorite();
              },
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
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.69,
                      ),
                      itemBuilder: (context, index) {
                        controllerFav.isfavorite[controller
                                .data[index]['items_id']] =
                            controller.data[index]['favorite'];
                        return CustomCardListItems(
                          active: false,
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
