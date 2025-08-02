import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/controller/home/home_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/data/model/categories/categoriesmodel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomListCategories extends GetView<HomeControllerImp> {
  const CustomListCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 110,

      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Categories(
            i: index,
            categoriesModel: CategoriesModel.fromJson(controller.categories[index]),
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 15),
        itemCount: controller.categories.length,
      ),
    );
  }
}

//! Categories Section


class Categories extends GetView<HomeControllerImp> {

  final CategoriesModel categoriesModel;
  final int? i ;
  const Categories( {super.key, required this.categoriesModel ,required this.i});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems( controller.categories , i! , categoriesModel.categoriesId! );
      },
      child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      
                  decoration: BoxDecoration(
                    color: AppColor.blueGray,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SvgPicture.network(
                    "${APILinks.imagecategories}/${categoriesModel.categoriesImage}",
                    colorFilter: ColorFilter.mode(
                      AppColor.secondaryColor,
                      BlendMode.srcIn,
                    ),
                    width: 60,
                    height: 50,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "${categoriesModel.categoriesNameEn}",
                    style: TextStyle(
                      color: AppColor.secondaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}