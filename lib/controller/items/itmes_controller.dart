import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasources/remote/items/items_data.dart';
import 'package:ecommerce/data/model/items/itemsmodel.dart';
import 'package:get/get.dart';

abstract class ItmesController extends GetxController {
  intialData();
  changecat(int indexcat , String catval);
  getItems( String categoriesid);
  goToItemsDetails(ItemsModel itemsmodel);
  goToFavorite();
}

class ItemsControllerImp extends ItmesController {
  List categories = [];
  int? selectcat;
  String? categoriesid;
  
  ItemsData itemsdata = ItemsData(Get.find());
  StatusRequest? statusRequest ;
  List data = [];
  MyServiceApp myService = Get.find();

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
  var response = await itemsdata.getData(categoriesid , myService.sharedPreferences.getString("id")!);
  statusRequest = handlingData(response);
  if (statusRequest == StatusRequest.success) {
    if (response['status'] == "success") {
    
        data.addAll(response['data']); //? Add All Data in List data
      
    } else {
      statusRequest = StatusRequest.failure;    
    }
  }

  update();
}

  @override
  goToItemsDetails(itemsmodel) {
  Get.toNamed(AppRoute.itemsdetails   , arguments: { "itemsmodel": itemsmodel }  );
  }
  
  @override
  goToFavorite() {
    Get.toNamed(AppRoute.myfavorite);
  }


}