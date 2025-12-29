import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasources/remote/favorite/favorite_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {

  //! Favorite State
  Map isfavorite = {}; // Key : ItemsId  , Value : 1 or 0

  //! Back End Data
  FavoriteData favoriteData = FavoriteData(Get.find());
  StatusRequest? statusRequest;
  List data = [];
  MyServiceApp myService = Get.find();

  //! Change Favorite State
  setfavorite(itemsId, favorite) {
    isfavorite[itemsId] = favorite;
    update();
  }

  //! Add Favorite To DataBase
  addFavorite(String itemsid) async {
    statusRequest = StatusRequest.loading; //? Loading
    var response = await favoriteData.addFavorite(
      myService.sharedPreferences.getString("id")!,itemsid);
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
          messageText: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "71".tr,
              style: TextStyle(
                color: AppColor.white,
                fontSize: myService.sharedPreferences.getString("lang") == "en" ? 15 : 13,
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
    update();
  }

  //! Remove Favorite From DataBase
  removeFavorite(String itemsid) async {
    statusRequest = StatusRequest.loading; //? Loading
    var response = await favoriteData.removeFavorite(
      myService.sharedPreferences.getString("id")!,itemsid);
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
          messageText: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "72".tr,
              style: TextStyle(
                color: AppColor.white,
                fontSize: myService.sharedPreferences.getString("lang") == "en" ? 15 : 13,
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
    update();
  }
}
