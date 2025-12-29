import 'package:ecommerce/controller/Itemsdetails/itemsdetalis_controller.dart';
import 'package:ecommerce/controller/cart/cart_controller.dart';
import 'package:ecommerce/core/classes/handlingdataview.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/functions/translatedatabase.dart';
import 'package:ecommerce/view/widget/cart/customecardcart.dart';
import 'package:ecommerce/view/widget/cart/customeitemscount.dart';
import 'package:ecommerce/view/widget/cart/customenavigationbarcart.dart';
import 'package:ecommerce/view/widget/cart/custometopcart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    ItemsdetailsControllerImp controlleritmes = Get.put(ItemsdetailsControllerImp());
    return GetBuilder<CartController>(
      builder:
          (controller) => HandlingDataView(
            statusRequest: controller.statusRequest!,
            widget: Scaffold(
              backgroundColor: AppColor.white,
              bottomNavigationBar: CustomeNavigationBarCart(
                price: "${controller.totalpriceitems} \$",
                shipping: "299 \$",
                totalPrice: "1299 \$",
              ),
              body: ListView(
                children: [
                  CustomeTopCart(
                    titleappbar: "80".tr,
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  CustomeItemsCount(
                    titleappbar:
                        "${"81".tr} ${controller.totalcountitems} ${"82".tr}",
                  ),
                  ...List.generate(
                    controller.data.length,
                    (index) => CustomeCardCart(
                      onAdd: () async {
                        await controlleritmes.addCart(controller.data[index].itemsId!);
                        controller.refreshpage();
                      },
                      onRemove: () async{
                        await controlleritmes.removeCart(controller.data[index].itemsId!);
                        controller.refreshpage();
                      },
                      imagename: "${controller.data[index].itemsImage}",
                      titleitems:  translatedatebase("${controller.data[index].itemsNameEn}" ,"${controller.data[index].itemsNameAr}"),
                      priceitems: "${controller.data[index].itemsprice} \$",
                      countitems: "${controller.data[index].countitems}",
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
