import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/classes/statesrequest.dart';
import 'package:ecommerce/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;


class Crud {
Future<Either<StatusRequest , Map >> postData( String linkurl , Map data ) async {
try{
 //? Check Internet begin 
if ( await checkInternet() ) {
var response = await http.post( Uri.parse(linkurl) , body : data); 
if( response.statusCode == 200 || response.statusCode == 201 ) {
var responsebody = jsonDecode(response.body);
return Right (responsebody);
}else { 
  return left(StatusRequest.serverFailure);

}}else {
  return left ( StatusRequest.offlineFailure ) ;
}}
catch(_){
  
  return left(StatusRequest.serverExcption);

}
}
}



