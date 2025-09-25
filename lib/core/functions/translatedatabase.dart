import 'package:ecommerce/core/services/services.dart';
import 'package:get/get.dart';

translatedatebase(String coloumen , String coloumar){

MyServiceApp  myServiceApp = Get.find();

if(myServiceApp.sharedPreferences.getString("lang") == "en"){
  return coloumen;
}
else{
  return coloumar;
}


}