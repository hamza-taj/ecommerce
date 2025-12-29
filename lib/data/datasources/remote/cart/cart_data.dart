import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/classes/crud.dart';

class CartData {

  Crud crud;
  CartData(this.crud);

  //! Add Cart Items
  addCart(String usersid, String itemsid) async {
    var response = await crud.postData(APILinks.addCartlink, {
      "usersid": usersid,
      "itemsid": itemsid
    });
    return response.fold((l) => l, (r) => r);
  }

  //! Remove Cart Items
  removeCart(String usersid, String itemsid) async {
    var response = await crud.postData(APILinks.removeCartlink, {
      "usersid": usersid,
      "itemsid": itemsid
    });
    return response.fold((l) => l, (r) => r);
  }
  
  //! Get Count Cart Items
  getCountItems(String usersid, String itemsid) async {
    var response = await crud.postData(APILinks.getCountCartlink, {
      "usersid": usersid,
      "itemsid": itemsid
    });
    return response.fold((l) => l, (r) => r);
  }
  //! View Cart Items
  viewcart(String usersid) async {
    var response = await crud.postData(APILinks.viewCartlink, {
      "usersid": usersid
    });
    return response.fold((l) => l, (r) => r);
  }
}
