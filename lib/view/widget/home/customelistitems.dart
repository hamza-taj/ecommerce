import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/controller/home/home_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/functions/translatedatabase.dart';
import 'package:ecommerce/data/model/items/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItems extends GetView<HomeControllerImp> {
  const CustomListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.items.length,
        itemBuilder: (context, index) {
          return Items(
            itemsModel: ItemsModel.fromJson(controller.items[index]),
          );
        },
      ),
    );
  }
}

//! Items Section

class Items extends GetView<HomeControllerImp> {
  final ItemsModel itemsModel;
  const Items({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding:
              controller.lang == "en"
                  ? EdgeInsets.symmetric(horizontal: 30, vertical: 20)
                  : EdgeInsets.symmetric(horizontal: 40, vertical: 20),

          //margin: EdgeInsets.symmetric(vertical: 10),
          child: Image.network(
            "${APILinks.imageitems}/${itemsModel.itemsImage}",
            width: 150,
            height: 100,
            fit: BoxFit.fill,
          ),
        ),

        Container(
          margin: EdgeInsets.only(right: 20),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          width: 200,
          height: 150,
          decoration: BoxDecoration(
            color: AppColor.darkBlue.withAlpha(60),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Positioned(
          top: 120,
          left: controller.lang == "en" ? 15 : null,
          right: controller.lang == "ar" ? 35 : null,
          child: Text(
            translatedatebase(
              "${itemsModel.itemsNameEn}",
              "${itemsModel.itemsNameAr}",
            ),
            style: TextStyle(
              color: AppColor.darkBlue,
              fontSize: controller.lang == "en" ? 12 : 10,
              fontWeight: FontWeight.bold,
              // fontFamily: "Cairo",
            ),
          ),
        ),
      ],
    );
  }
}
