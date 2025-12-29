import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasources/remote/cart/cart_data.dart';
import 'package:ecommerce/data/model/cart/cartmodel.dart';
import 'package:ecommerce/data/model/items/itemsmodel.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  //! Back End Data
  CartData cartData = CartData(Get.find());

  //! Services & Status Request
  StatusRequest? statusRequest;
  MyServiceApp myService = Get.find();

  //! Cart view
  List<CartModel> data = [];
  int totalcountitems = 0;
  double totalpriceitems = 0.0;

  int countitems = 0;
  late ItemsModel itemsModel;

  resetvarCart() {
    totalcountitems = 0;
    totalpriceitems = 0.0;
    data.clear();
  }

  refreshpage() {
    resetvarCart();
    viewCart();
  }

  //! View Cart Items
  viewCart() async {
    statusRequest = StatusRequest.loading; //? Loading
    update();
    data.clear();
    var response = await cartData.viewcart(
      myService.sharedPreferences.getString("id")!,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        if (response['datacart']['status'] == "success") {
          List dataresponse = response['datacart']['data'];
          Map dataresponsecountprice = response['countprice'];
          data.clear();
          data.addAll(dataresponse.map((e) => CartModel.fromJson(e)));
          totalcountitems = int.parse(
            dataresponsecountprice['totalcountitems'],
          );
          totalpriceitems = double.parse(dataresponsecountprice['totalprice']);
        }
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    viewCart();
    super.onInit();
  }
}
