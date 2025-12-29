import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/classes/crud.dart';

class CheckEmailData {

Crud crud ;
CheckEmailData(this.crud);

//! Check Email

postData(String email ) async {
var  response = await crud.postData ( APILinks.checemaillink , { "email"   : email } );
return response.fold( (l) => l , (r) => r ) ;
}
}

