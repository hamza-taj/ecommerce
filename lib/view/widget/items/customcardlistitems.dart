import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/controller/favaorite/favorite_controller.dart';
import 'package:ecommerce/controller/items/itmes_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/functions/translatedatabase.dart';
import 'package:ecommerce/data/model/items/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsmodel;
  final bool active;
  const CustomCardListItems({
    super.key,
    required this.itemsmodel,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(FavoriteController());
    return InkWell(
      onTap: () {
        controller.goToItemsDetails(itemsmodel);
      },
      child: Card(
        color: AppColor.blueGray,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            mainAxisSize: MainAxisSize.min,
            children: [
              Hero(
                tag: itemsmodel.itemsId!,
                child: CachedNetworkImage(
                  imageUrl: "${APILinks.imageitems}/${itemsmodel.itemsImage}",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  translatedatebase(
                    "${itemsmodel.itemsNameEn}",
                    "${itemsmodel.itemsNameAr}",
                  ),
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColor.darkBlue,
                    fontFamily: "PlayfairDisplay",
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rating",
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: "PlayfairDisplay",
                      ),
                    ),

                    Row(
                      children: [
                        ...List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            size: 13,
                            color: AppColor.babyBlue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "${itemsmodel.itemsPrice} \$",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: AppColor.secondaryColor,
                      ),
                    ),
                  ),
                  GetBuilder<FavoriteController>(
                    builder:
                        (controller) => IconButton(
                          onPressed: () {
                            if (controller.isfavorite[itemsmodel.itemsId] ==
                                "1") {
                              controller.setfavorite(itemsmodel.itemsId, "0");
                              controller.removeFavorite(itemsmodel.itemsId!);
                             
                            } else {
                              controller.setfavorite(itemsmodel.itemsId, "1");
                              controller.addFavorite(itemsmodel.itemsId!);
                            }
                          },
                          icon: Icon(
                            controller.isfavorite[itemsmodel.itemsId] == "1"
                                ? Icons.favorite
                                : Icons.favorite_outline,
                            color: AppColor.secondaryColor,
                          ),
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
