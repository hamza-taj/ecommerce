import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/data/datasources/remote/items/items_data.dart';
import 'package:get/get.dart';

abstract class ItmesController extends GetxController {
  intialData();
  changecat(int indexcat , String catval);
  getItems( String categoriesid);
}

class ItemsControllerImp extends ItmesController {
  List categories = [];
  int? selectcat;
  String? categoriesid;
  
  ItemsData itemsdata = ItemsData(Get.find());
  StatusRequest? statusRequest ;
  List data = [];

  @override
  void onInit() {
    intialData();
    super.onInit();
  }

  @override
  intialData() {
    categories = Get.arguments['categories'];
    selectcat = Get.arguments['selectcat'];
    categoriesid = Get.arguments['categoriesid'];
    getItems(categoriesid!);
  }

  @override
  changecat( indexcat ,catval ) {
    selectcat    = indexcat;
    categoriesid = catval;
    getItems(catval);
    update();
  }

@override
getItems(categoriesid) async { 
  data.clear();
  statusRequest = StatusRequest.loading; //? Loading
  update();

  var response = await itemsdata.getData(categoriesid);
  statusRequest = handlingData(response);

  if (statusRequest == StatusRequest.success) {
    if (response['status'] == "success") {
    
        data.addAll(response['data']); //? Add All Data in List data
      
    } else {
      statusRequest = StatusRequest.failure; // أو حالة مناسبة
    }
  }

  update();
}


}