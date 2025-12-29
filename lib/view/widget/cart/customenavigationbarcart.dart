import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/view/widget/cart/customebuttoncart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeNavigationBarCart extends StatelessWidget {
  final String price;
  final String shipping;
  final String totalPrice;
  const CustomeNavigationBarCart({super.key, required this.price, required this.shipping, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "83".tr,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    price,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "84".tr,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    shipping,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColor.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "85".tr,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    totalPrice,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColor.red,
                    ),
                  ),
                ),
              ],
            ),
          ),

          CustomeButtonCart(onPressed: () {}, titleicon: "86".tr),
          SizedBox(height: 15),
        ],
      );
  }
}