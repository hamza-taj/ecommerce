import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CustomeOPTAuth extends StatelessWidget {
  final Function(String)? onSubmit;
  const CustomeOPTAuth({super.key,required this.onSubmit});

  @override
  Widget build(BuildContext context) {
  
    return Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: OtpTextField(
              borderRadius: BorderRadius.circular(15),

              numberOfFields: 5,

              cursorColor: AppColor.babyBlue,
              focusedBorderColor: AppColor.babyBlue,
              fillColor: AppColor.black,

              onCodeChanged: (String code) {},

              onSubmit:onSubmit,
            ),
          );
  }
}

