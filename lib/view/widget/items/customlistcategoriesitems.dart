import 'package:ecommerce/controller/items/itmes_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/functions/translatedatabase.dart';
import 'package:ecommerce/data/model/categories/categoriesmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListCategoriesItems extends GetView<ItemsControllerImp> {
  const CustomListCategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 60,

      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
            i: index,
            categoriesModel: CategoriesModel.fromJson(
              controller.categories[index],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 15),
        itemCount: controller.categories.length,
      ),
    );
  }
}

//! Categories Section

class Categories extends StatelessWidget {
  final CategoriesModel categoriesModel;
  final int? i;
  const Categories({super.key, required this.categoriesModel, required this.i});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsControllerImp>(builder: (controller) => InkWell(
      onTap: () {
        controller.changecat(i! , categoriesModel.categoriesId!);
      },
      child: Column(
        children: [
          Container(
            decoration:
                controller.selectcat == i
                    ? BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColor.primaryColor,
                          width: 3,
                        ),
                      ),
                    )
                    : null,
            padding: EdgeInsets.only(top: 20, left: 11, right: 11, bottom: 8),
            child: Text(
             translatedatebase("${categoriesModel.categoriesNameEn}" ,"${categoriesModel.categoriesNameAr}"),
              style: TextStyle(
                color: AppColor.darkBlue,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),);
  }
}
