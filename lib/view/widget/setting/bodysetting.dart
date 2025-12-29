import 'package:ecommerce/controller/setting/setting_controller.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodySetting extends StatelessWidget {
  const BodySetting({super.key});

  @override
  Widget build(BuildContext context) {
    SettingController controller = Get.put(SettingController());
    MyServiceApp myServiceApp = Get.find();
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 60),
      padding: EdgeInsets.all(8),
      color: AppColor.white,
      child: Card(
        color: AppColor.white,
        child: Column(
          children: [
            ListTile(
              title: Text(
                "73".tr,
                style:
                    myServiceApp.sharedPreferences.getString("lang") == "en"
                        ? TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                        : TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              trailing: Transform.scale(
                scale: 0.8,
                child: Switch(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onChanged: (value) {},
                  value: true,
                  inactiveTrackColor: AppColor.primaryColor,
                  inactiveThumbColor: AppColor.white,
                  activeColor: AppColor.primaryColor,
                ),
              ),
            ),
            ...List.generate(
              controller.listsetting.length,
              (index) => ListTile(
                onTap: () {
                  if (controller.listsetting[index]['name'] == "77".tr) {
                    controller.logout();
                  }
                },
                title: Text(
                  controller.listsetting[index]['name'],
                  style:
                      myServiceApp.sharedPreferences.getString("lang") == "en"
                          ? TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                          : TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                ),
                trailing: Icon(
                  controller.listsetting[index]['icon'],
                  color: AppColor.primaryColor,
                  size: 27,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
