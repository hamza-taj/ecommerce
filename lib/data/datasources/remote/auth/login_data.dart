import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/classes/crud.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);

  //! Login
  postData(String email, String password) async {
    var response = await crud.postData(APILinks.loginlink, {"email": email, "password": password});
    return response.fold((l) => l, (r) => r);
  }
}
