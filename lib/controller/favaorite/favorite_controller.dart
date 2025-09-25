import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasources/remote/favorite/favorite_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  Map isfavorite = {}; // Key : ItemsId  , Value : 1 or 0

  //! Back End Data
  FavoriteData favoriteData = FavoriteData(Get.find());
  StatusRequest? statusRequest;
  List data = [];
  MyServiceApp myService = Get.find();

  //? Change Favorite State

  setfavorite(itemsId, favorite) {
    isfavorite[itemsId] = favorite;
    update();
  }

  //? Add Favorite To DataBase
  addFavorite(String itemsid) async {
    statusRequest = StatusRequest.loading; //? Loading
    var response = await favoriteData.addFavorite(
      myService.sharedPreferences.getString("id")!,
      itemsid,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
          messageText: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Item added to favorite",
              style: TextStyle(
                color: AppColor.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: AppColor.secondaryColor,
        );
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }

  //? Remove Favorite From DataBase
  removeFavorite(String itemsid) async {
    statusRequest = StatusRequest.loading; //? Loading
    var response = await favoriteData.removeFavorite(
      myService.sharedPreferences.getString("id")!,
      itemsid,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
          messageText: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Item removed from favorite",
              style: TextStyle(
                color: AppColor.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: AppColor.secondaryColor,
        );
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }
}
