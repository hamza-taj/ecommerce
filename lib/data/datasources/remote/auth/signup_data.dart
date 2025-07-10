import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/classes/crud.dart';

class SignupData { 

Crud crud ;

SignupData(this.crud);


//? Get All Data

postData(String username , String email , String password , String phone) async {

var  response = await crud.postData ( APILinks.signuplink , { 

"username"   : username ,
"email"      : email ,
"password"   : password ,
"phone"      : phone ,

} );

return response.fold( (l) => l , (r) => r ) ;

}

}

