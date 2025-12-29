import 'package:ecommerce/apilinks/api_links.dart';
import 'package:ecommerce/core/classes/crud.dart';

class MyfavoriteData {

  Crud crud;
  MyfavoriteData(this.crud);

  //! View Favorite Items
  viewFavorite(String usersid) async {
    var response = await crud.postData(APILinks.viewfavoritelink, {"id": usersid});
    return response.fold((l) => l, (r) => r);
  }
  
  //! Delete Favorite Items
  deleteFavorite(String favoriteid) async {
    var response = await crud.postData(APILinks.deletefavoritelink, {"id": favoriteid});
    return response.fold((l) => l, (r) => r);
  }

 
}
