import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasources/remote/cart/cart_data.dart';
import 'package:ecommerce/data/model/items/itemsmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ItemsdetailsController extends GetxController {
  intialData();
  goTocart();
}
class ItemsdetailsControllerImp extends ItemsdetailsController {

  //! Data & Variables
  late ItemsModel itemsModel;
  StatusRequest? statusRequest;
  int countitems = 0;
  MyServiceApp myService = Get.find();
  CartData cartData = CartData(Get.find());

  //!List Items
  List itemsvalue = [
    {"id": 1, "name": "Red", "active": false},
    {"id": 2, "name": "Black", "active": false},
    {"id": 3, "name": "Blue", "active": true},
  ];
 
  
  //! Get Count Items in Cart
  getCountItemsCart(String itemsid) async {
    statusRequest = StatusRequest.loading; //? Loading
    var response = await cartData.getCountItems(
      myService.sharedPreferences.getString("id")!,
      itemsid,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        int countitems = 0;
        countitems = int.parse(
          response['data'],
        ); //? Convernt Interger To String
        return countitems;
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  //! Add Cart To DataBase
  addCart(String itemsid) async {
    statusRequest = StatusRequest.loading; //? Loading
    update();
    var response = await cartData.addCart(
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
              "78".tr,
              style: TextStyle(
                color: AppColor.white,
                fontSize:
                    myService.sharedPreferences.getString("lang") == "en"
                        ? 15
                        : 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: AppColor.black,
        );
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  //! Remove Cart From DataBase
  removeCart(String itemsid) async {
    statusRequest = StatusRequest.loading; //? Loading
    update();
    var response = await cartData.removeCart(
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
              "79".tr,
              style: TextStyle(
                color: AppColor.white,
                fontSize:
                    myService.sharedPreferences.getString("lang") == "en"
                        ? 15
                        : 13,
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


add() {
  addCart(itemsModel.itemsId!);
    countitems++; 
    update();
  }

  remove() {
    if (countitems > 0) {
     removeCart(itemsModel.itemsId!);
      countitems--;
      update();
    }
  }
  //! Intial Data
  @override
  intialData() async {
    itemsModel = Get.arguments["itemsmodel"];
    statusRequest = StatusRequest.loading;
    countitems = await getCountItemsCart(
      itemsModel.itemsId!,
    ); //? Get Count Itmes For Cart
    statusRequest = StatusRequest.success;
    update();
  }
  
  @override
  goTocart() {              
   Get.toNamed(AppRoute.mycart);
  }
  
  //! Life Cycle
  @override
  void onInit() {
    intialData();
    super.onInit();
  }

}
