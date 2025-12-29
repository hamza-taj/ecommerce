import 'package:ecommerce/core/classes/statesrequest.dart';

handlingData(response) {

//! Faliure
if (response is StatusRequest) {
  return response;
}
 
//! Success
else {
  return StatusRequest.success;
 }
}