import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';

class CustomTitleItems extends StatelessWidget {
  final String title;
  const CustomTitleItems({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    
    return Container(
                  padding: EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: 15,
                    bottom: 15,
                  ),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: AppColor.darkBlue,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
  }
}