import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/data/model/items/itemsmodel.dart';
import 'package:flutter/material.dart';

class CustomCardListItems extends StatelessWidget {
  final ItemsModel itemsmodel;
  const CustomCardListItems({super.key, required this.itemsmodel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.blueGray,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          mainAxisSize: MainAxisSize.min,
          children: [
            CachedNetworkImage(
              imageUrl: "${APILinks.imageitems}/${itemsmodel.itemsImage}",
              height: 100,
              width: 100,
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "${itemsmodel.itemsNameEn}",
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
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite, color: AppColor.secondaryColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
