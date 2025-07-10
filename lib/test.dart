import 'package:ecommerce/controller/test_controller.dart';
import 'package:ecommerce/core/classes/handlingdataview.dart';
import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(title: const Text('TestView')),
      body: GetBuilder<TestController>(builder: (controller) {

       return HandlingDataView(
        statusRequest: controller.statusRequest! ,
        
         widget: ListView.builder(
        itemCount: controller.data.length,
        itemBuilder: (context, index) {
         return Text("${controller.data}");

       } ), );
       

      }),
    );
  }
}
