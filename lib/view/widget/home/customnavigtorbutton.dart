import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';

class CustomNavigatorButton extends StatelessWidget {
  final IconData? iconbutton;
  // final String titlebutton;
  final void Function()? onPressed;
  final bool? active;

  const CustomNavigatorButton({
    super.key,
    required this.iconbutton,
    // required this.titlebutton,
    required this.onPressed,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
    
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconbutton,
            color: active == true ? AppColor.primaryColor : Colors.black,
          ),
          SizedBox(height: 5),
          // Text(
          //   titlebutton,
          //   style: TextStyle(
          //     color: active == true ? AppColor.primaryColor : Colors.black, fontWeight: FontWeight.bold , fontSize: 12
          //   ),
          // ),
        ],
      ),
    );
  }
}
