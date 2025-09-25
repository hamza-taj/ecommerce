import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';

class CustomItemsDescription extends StatelessWidget {
  final String description;
  const CustomItemsDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColor.black,
                      fontSize: 15,
                      height: 2,
                    ),
                  ),
                );
  }
}