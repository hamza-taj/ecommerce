import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/controller/Itemsdetails/itemsdetalis_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderItems extends GetView<ItemsdetailsControllerImp> {

  const CustomSliderItems({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(color: AppColor.secondaryColor),
              ),
              Positioned(
                top: Get.height / 20,
                left: Get.width / 4,
                right: Get.width / 4,
                child: Hero(
                  tag: controller.itemsModel.itemsId!,
                  child: CachedNetworkImage(
                    imageUrl:"${APILinks.imageitems}/${controller.itemsModel.itemsImage!}",
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          );
  }
}