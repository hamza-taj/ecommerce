import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';

class CustomeButtonCart extends StatelessWidget {
  final String titleicon;
  final void Function()? onPressed;
  const CustomeButtonCart({
    super.key,
    required this.titleicon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          titleicon,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: AppColor.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
