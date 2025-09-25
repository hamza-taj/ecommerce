import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasources/remote/favorite/myfavorite_data.dart';
import 'package:ecommerce/data/model/myfavorite/myfavoritemodel.dart';
import 'package:get/get.dart';

class MyFavoriteController extends GetxController {
  //! Back End Data
  MyfavoriteData myfavoriteData = MyfavoriteData(Get.find());
  StatusRequest? statusRequest;
  List<MyfavoriteModel> data = [];
  MyServiceApp myService = Get.find();

  //? View Favorite
  viewFavorite() async {
    statusRequest = StatusRequest.loading; //? Loading
    var response = await myfavoriteData.viewFavorite(
      myService.sharedPreferences.getString("id")!,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        List responseData = response["data"];

        data.addAll(responseData.map((e) => MyfavoriteModel.fromJson(e)));

        print("data");
        print(data);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    viewFavorite();
    super.onInit();
  }
}
