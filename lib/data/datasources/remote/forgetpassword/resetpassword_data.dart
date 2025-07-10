import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/classes/crud.dart';

class ResetPasswordData {

Crud crud ;

ResetPasswordData(this.crud);


//? Reset Password

postData( String email , String password ) async {

var  response = await crud.postData ( APILinks.resetpasswordlink , { "email": email , "password": password } );

return response.fold( (l) => l , (r) => r ) ;

}

}

