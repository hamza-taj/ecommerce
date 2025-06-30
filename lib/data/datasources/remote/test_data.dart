import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/classes/crud.dart';

class TestData { 

Crud crud ;

TestData(this.crud);


//? Get All Data

getData() async {

var  response = await crud.postData ( APILinks.testapi , { } );

response.fold( (l) => l , (r) => r ) ;




}









}

