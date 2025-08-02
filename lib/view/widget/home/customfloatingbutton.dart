import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: AppColor.primaryColor,
              onPressed: () {},
              child: Icon(Icons.shopping_cart, color: AppColor.white),
            );
  }
}