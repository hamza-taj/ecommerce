import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String titleappbar;
  final IconData? iconappbar;
  const CustomAppBar({super.key, required this.titleappbar, required this.iconappbar});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: titleappbar,
                hintStyle: TextStyle(
                  color: AppColor.darkBlue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: IconButton(
                  icon: Icon(Icons.search, color: AppColor.darkBlue),
                  onPressed: () {},
                ),
                filled: true,
                fillColor: AppColor.blueGray,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4),
            width: 60,
            decoration: BoxDecoration(
              color: AppColor.blueGray,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                iconappbar,
                size: 26,
                color: AppColor.darkBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
