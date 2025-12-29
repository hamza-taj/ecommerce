import 'package:ecommerce/view/widget/setting/bodysetting.dart';
import 'package:ecommerce/view/widget/setting/toplevelsetting.dart';
import 'package:flutter/material.dart';


class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
       TopLevelSetting(),
        BodySetting(),
      ],
    );
  }
}
