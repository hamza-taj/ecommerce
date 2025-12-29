import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/classes/crud.dart';

class HomeData { 

Crud crud ;
HomeData(this.crud);

//! Get All Data
getData() async {
var  response = await crud.postData ( APILinks.home , { } );
return response.fold( (l) => l , (r) => r ) ;
}
}

