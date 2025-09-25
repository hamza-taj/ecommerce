class ItemsModel {
  String? categoriesId;
  String? categoriesNameEn;
  String? categoriesNameAr;
  String? categoriesImage;
  String? categoriesDatatime;
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
  String? favorite;

  ItemsModel(
      {this.categoriesId,
      this.categoriesNameEn,
      this.categoriesNameAr,
      this.categoriesImage,
      this.categoriesDatatime,
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
      this.favorite});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    categoriesId = json['categories_id'];
    categoriesNameEn = json['categories_name_en'];
    categoriesNameAr = json['categories_name_ar'];
    categoriesImage = json['categories_image'];
    categoriesDatatime = json['categories_datatime'];
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
    favorite = json['favorite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categories_id'] = this.categoriesId;
    data['categories_name_en'] = this.categoriesNameEn;
    data['categories_name_ar'] = this.categoriesNameAr;
    data['categories_image'] = this.categoriesImage;
    data['categories_datatime'] = this.categoriesDatatime;
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
    data['favorite'] = this.favorite;
    return data;
  }
}