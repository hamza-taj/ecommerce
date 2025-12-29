import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeCardCart extends StatelessWidget {
  final String titleitems;
  final String priceitems;
  final String countitems;
  final String imagename;
  final void Function()? onAdd;
  final void Function()? onRemove;
  const CustomeCardCart({
    super.key,
    required this.titleitems,
    required this.priceitems,
    required this.countitems,
    required this.imagename,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    MyServiceApp myServiceapp = Get.find();
    return Container(
      margin: EdgeInsets.only(right: 15, left: 15, top: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: Card(
        color: AppColor.blueGray,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: CachedNetworkImage(
                imageUrl: "${APILinks.imageitems}/$imagename",
                height: 60,
              ),
            ),
            Expanded(
              flex: 3,
              child: ListTile(
                title: Text(
                  titleitems,
                  style: myServiceapp.sharedPreferences.getString("lang") == "en"
                      ? TextStyle(fontWeight: FontWeight.bold, fontSize: 14)
                      : TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    priceitems,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: AppColor.secondaryColor,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    child: IconButton(
                      onPressed: onAdd,
                      icon: Icon(Icons.add, color: AppColor.secondaryColor),
                    ),
                  ),

                  Text(
                    countitems,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: AppColor.darkBlue,
                    ),
                  ),

                  SizedBox(
                    height: 35,
                    child: IconButton(
                      onPressed: onRemove,
                      icon: Icon(Icons.remove, color: AppColor.secondaryColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
