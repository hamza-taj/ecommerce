import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/classes/crud.dart';

class VerifyCodeData {

Crud crud ;

VerifyCodeData(this.crud);


//? Verify Code

postData( String email , String verfiycode ) async {

var  response = await crud.postData ( APILinks.verifycodelink , { "email"   : email , "verifycode" : verfiycode } );

return response.fold( (l) => l , (r) => r ) ;

}

}

