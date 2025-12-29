import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/constants/routesname.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasources/remote/homepage/homedata.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {

  initdata();
  getData();
  goToItems(List categories, int selectcat, String categoriesid);
  goToMyFavorite();

}

class HomeControllerImp extends HomeController {

  //! Services and Storage variable
  MyServiceApp myServiceApp = Get.find();
  String? email;
  String? username;
  String? id;
  String? lang;

  //! Initialize Data from SharedPreferences
  @override
  initdata() {
    email      =  myServiceApp.sharedPreferences.getString("email");
    username   = myServiceApp.sharedPreferences.getString("username");
    id         = myServiceApp.sharedPreferences.getString("id");
    lang       = myServiceApp.sharedPreferences.getString("lang");
  }

  //! Life Cycle
  @override
  void onInit() {
    initdata();
    getData();
    super.onInit();
  }

  //! Get Data Back End
  HomeData homedata = HomeData(Get.find());
  StatusRequest? statusRequest;
  List categories = []; //? Categories List
  List items = []; //? Items List

  //! Get Data
  @override
  getData() async {
    statusRequest = StatusRequest.loading; //? Loading
    var response = await homedata.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']['data']);
        items.addAll(response['items']['data']);
      } 
      else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

   //! Items
   @override
   goToItems(categories, selectcat, categoriesid) {
    Get.toNamed(
      AppRoute.items,
      arguments: {"categories": categories,"selectcat": selectcat,"categoriesid": categoriesid},
          );
       }
  
   //! My Favorite
  @override
  goToMyFavorite() {
    Get.toNamed(AppRoute.myfavorite);
   }
}
