import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/classes/crud.dart';

class FavoriteData {

  Crud crud;
  FavoriteData(this.crud);

  //! Add Favorite Items
  addFavorite(String usersid, String itemsid) async {
    var response = await crud.postData(APILinks.addfavoritelink, {
      "usersid": usersid,
      "itemsid": itemsid
    });
    return response.fold((l) => l, (r) => r);
  }

  //! Remove Favorite Items
  removeFavorite(String usersid, String itemsid) async {
    var response = await crud.postData(APILinks.removefavoritelink, {
      "usersid": usersid,
      "itemsid": itemsid
    });
    return response.fold((l) => l, (r) => r);
  }
}
