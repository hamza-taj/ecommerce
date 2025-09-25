import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final String title ;
  const CustomNavigationBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20 , right: 25 , left: 25),
        height: 50,
       decoration: BoxDecoration(
         color: AppColor.secondaryColor,
         borderRadius: BorderRadius.circular(20),
       ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        
      );
  }
}