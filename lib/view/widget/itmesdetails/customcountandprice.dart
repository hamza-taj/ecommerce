import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';

class CustomCountAndPrice extends StatelessWidget {
  final void Function()? onAdd;
  final void Function()? onDelete;
  final String count;
  final String price;
  const CustomCountAndPrice({
    super.key,
    required this.onAdd,
    required this.onDelete,
    required this.count,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              children: [
                IconButton(
                  onPressed: onAdd,
                  icon: Icon(Icons.add, color: AppColor.darkBlue, size: 25),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    count,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: onDelete,
                  icon: Icon(Icons.remove, color: AppColor.darkBlue, size: 25),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Text(
              price,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: AppColor.secondaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
