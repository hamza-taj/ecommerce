import 'package:ecommerce/controller/Itemsdetails/itemsdetalis_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomColorItems extends GetView<ItemsdetailsControllerImp> {

  const CustomColorItems({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Padding(
           padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row( children: [
                    ...List.generate(controller.itemsvalue.length, (index) => Container(
                    margin: EdgeInsets.only(right: 15),
                    alignment: Alignment.center,
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: controller.itemsvalue[index]["active"] ? AppColor.secondaryColor : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColor.secondaryColor,
                        width: 2,
                      ),
                    ),
                    child: Text(
                     controller.itemsvalue[index]["name"],
                      style: TextStyle(
                        color: controller.itemsvalue[index]["active"] ? Colors.white : AppColor.secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ))
                  ],),
                );
  }
}