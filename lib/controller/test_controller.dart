
import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/functions/handlingdata.dart';
import 'package:ecommerce/data/datasources/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController {

TestData testData  = TestData(Get.find());

 List data = [ ] ;                            //? List for storge Data

 StatusRequest? statusRequest ;               //? Status Request 


 getData() async { 

  statusRequest  = StatusRequest.loading ;       //? Loading 

  var response   = await testData.getData();

  statusRequest  = handlingData(response);  

  if ( StatusRequest.success == statusRequest ) {

   if( response ['status'] ==  "success" )  {

      data.addAll( response['data']);                 //? Add All Data in List data 

   }

   else {

  statusRequest = StatusRequest.failure;             //!  Erorr in statment Server 

   }

  }

  update();

  }

 @override
  void onInit() {

   getData();

    super.onInit();
  }
}