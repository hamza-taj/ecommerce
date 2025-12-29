class CartModel {
  String? cartId;
  String? cartUsersid;
  String? cartItemsid;
  String? itemsId;
  String? itemsNameEn;
  String? itemsNameAr;
  String? itemsDescrptionEn;
  String? itemsDescrptionAr;
  String? itemsImage;
  String? itemsCount;
  String? itemsActive;
  String? itemsPrice;
  String? itemsDiscount;
  String? itemsDatatime;
  String? itemsCat;
  String? countitems;
  String? itemsprice;

  CartModel(
      {this.cartId,
      this.cartUsersid,
      this.cartItemsid,
      this.itemsId,
      this.itemsNameEn,
      this.itemsNameAr,
      this.itemsDescrptionEn,
      this.itemsDescrptionAr,
      this.itemsImage,
      this.itemsCount,
      this.itemsActive,
      this.itemsPrice,
      this.itemsDiscount,
      this.itemsDatatime,
      this.itemsCat,
      this.countitems,
      this.itemsprice});

  CartModel.fromJson(Map<String, dynamic> json) {
    cartId = json['cart_id'];
    cartUsersid = json['cart_usersid'];
    cartItemsid = json['cart_itemsid'];
    itemsId = json['items_id'];
    itemsNameEn = json['items_name_en'];
    itemsNameAr = json['items_name_ar'];
    itemsDescrptionEn = json['items_descrption_en'];
    itemsDescrptionAr = json['items_descrption_ar'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsActive = json['items_active'];
    itemsPrice = json['items_price'];
    itemsDiscount = json['items_discount'];
    itemsDatatime = json['items_datatime'];
    itemsCat = json['items_cat'];
    countitems = json['countitems'];
    itemsprice = json['itemsprice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cart_id'] = this.cartId;
    data['cart_usersid'] = this.cartUsersid;
    data['cart_itemsid'] = this.cartItemsid;
    data['items_id'] = this.itemsId;
    data['items_name_en'] = this.itemsNameEn;
    data['items_name_ar'] = this.itemsNameAr;
    data['items_descrption_en'] = this.itemsDescrptionEn;
    data['items_descrption_ar'] = this.itemsDescrptionAr;
    data['items_image'] = this.itemsImage;
    data['items_count'] = this.itemsCount;
    data['items_active'] = this.itemsActive;
    data['items_price'] = this.itemsPrice;
    data['items_discount'] = this.itemsDiscount;
    data['items_datatime'] = this.itemsDatatime;
    data['items_cat'] = this.itemsCat;
    data['countitems'] = this.countitems;
    data['itemsprice'] = this.itemsprice;
    return data;
  }
}