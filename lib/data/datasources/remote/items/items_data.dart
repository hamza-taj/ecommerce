import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/classes/crud.dart';

class ItemsData { 

Crud crud ;

ItemsData(this.crud);


//? Get All Items

getData(String categoriesid) async {

var  response = await crud.postData ( APILinks.items , {"categoriesid" : categoriesid.toString()} );

return response.fold( (l) => l , (r) => r ) ;


}

}

