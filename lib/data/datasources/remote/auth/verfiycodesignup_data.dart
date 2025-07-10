import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/classes/crud.dart';

class VerifyCodeSignupData { 

Crud crud ;

VerifyCodeSignupData(this.crud);


//? Get All Data

postData( String email , String verfiycode ) async {

var  response = await crud.postData ( APILinks.verifycodesignuplink , { 
"email"        : email       ,
"verifycode"   : verfiycode  ,
} );

return response.fold( (l) => l , (r) => r ) ;




}

}

