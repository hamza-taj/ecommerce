import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/controller/favaorite/myfavorite_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/functions/translatedatabase.dart';
import 'package:ecommerce/data/model/myfavorite/myfavoritemodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardListFavorite extends GetView<MyFavoriteController> {
  final MyfavoriteModel myfavoriteModel;

  const CustomCardListFavorite({super.key, required this.myfavoriteModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                tag: myfavoriteModel.itemsId!,
                child: CachedNetworkImage(
                  imageUrl:
                      "${APILinks.imageitems}/${myfavoriteModel.itemsImage}",
                  height: 120,
                  width: 120,
                ),
              ),
              Text(
                translatedatebase(
                  "${myfavoriteModel.itemsNameEn}",
                  "${myfavoriteModel.itemsNameAr}",
                ),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColor.darkBlue,
                  fontFamily: "PlayfairDisplay",
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "${myfavoriteModel.itemsPrice} \$",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: AppColor.secondaryColor,
                      ),
                    ),
                  ),

                  IconButton(
                    onPressed: () {
                      controller.deleteFavorite(myfavoriteModel.favoriteId!);
                    },
                    icon: Icon(
                      Icons.delete,
                      size: 25,
                      color: AppColor.primaryColor,
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
