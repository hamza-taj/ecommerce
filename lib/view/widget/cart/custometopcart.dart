import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeTopCart extends StatelessWidget {
  final String titleappbar;
  final void Function()? onPressed;
  const CustomeTopCart({
    super.key,
    required this.titleappbar,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    MyServiceApp myServiceapp = Get.find();
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 15),
      alignment: Alignment.center,
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment:
                  myServiceapp.sharedPreferences.getString("lang") == "en"
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
              child: IconButton(
                onPressed: onPressed,
                icon: Icon(Icons.arrow_back),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                titleappbar,
                style:
                    myServiceapp.sharedPreferences.getString("lang") == "en"
                        ? TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
                        : TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
