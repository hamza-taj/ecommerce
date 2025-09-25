
import 'package:ecommerce/data/model/items/itemsmodel.dart';
import 'package:get/get.dart';

abstract class ItemsdetailsController extends GetxController {
  intialData();
}

class ItemsdetailsControllerImp extends ItemsdetailsController {
  late ItemsModel itemsModel;

  List itemsvalue = [
    {"id": 1  , "name": "Red"     , "active": false},
    {"id": 2  , "name": "Black"   , "active": false},
    {"id": 3  , "name": "Blue"    , "active": true},
  ];

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  intialData() {
    itemsModel = Get.arguments["itemsmodel"];
  }
}
