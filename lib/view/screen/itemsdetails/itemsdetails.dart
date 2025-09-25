import 'package:ecommerce/controller/Itemsdetails/itemsdetalis_controller.dart';
import 'package:ecommerce/core/functions/translatedatabase.dart';
import 'package:ecommerce/view/widget/itmesdetails/cstomslideritems.dart';
import 'package:ecommerce/view/widget/itmesdetails/customcoloritems.dart';
import 'package:ecommerce/view/widget/itmesdetails/customcountandprice.dart';
import 'package:ecommerce/view/widget/itmesdetails/customitemsdescrption.dart';
import 'package:ecommerce/view/widget/itmesdetails/customnavigationbar.dart';
import 'package:ecommerce/view/widget/itmesdetails/customtitleitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsdetailsControllerImp controller = Get.put(ItemsdetailsControllerImp());
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(title: "68".tr),
      body: ListView(
        children: [
          CustomSliderItems(),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitleItems(
                  title: translatedatebase(
                    controller.itemsModel.itemsNameEn!,
                    controller.itemsModel.itemsNameAr!,
                  ),
                ),
                CustomCountAndPrice(
                  onAdd: () {},
                  onDelete: () {},
                  count: "2",
                  price: "${controller.itemsModel.itemsPrice!} \$",
                ),
                CustomItemsDescription(
                  description: translatedatebase(
                    controller.itemsModel.itemsDescrptionEn!,
                    controller.itemsModel.itemsDescrptionAr!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomTitleItems(title: "67".tr),
                ),
                CustomColorItems(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
