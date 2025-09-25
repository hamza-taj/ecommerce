import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';

class CustomAppBarFavorite extends StatelessWidget {
  final String titleappbar;

  const CustomAppBarFavorite({super.key, required this.titleappbar});

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
                  fontSize: 14,
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
          
        ],
      ),
    );
  }
}
