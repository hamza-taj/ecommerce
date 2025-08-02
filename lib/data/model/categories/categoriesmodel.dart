class CategoriesModel {
  String? categoriesId;
  String? categoriesNameEn;
  String? categoriesNameAr;
  String? categoriesImage;
  String? categoriesDatatime;

  CategoriesModel(
      {
      this.categoriesId,
      this.categoriesNameEn,
      this.categoriesNameAr,
      this.categoriesImage,
      this.categoriesDatatime
      });

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoriesId         = json['categories_id'];
    categoriesNameEn     = json['categories_name_en'];
    categoriesNameAr     = json['categories_name_ar'];
    categoriesImage      = json['categories_image'];
    categoriesDatatime   = json['categories_datatime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categories_id']          = this.categoriesId;
    data['categories_name_en']     = this.categoriesNameEn;
    data['categories_name_ar']     = this.categoriesNameAr;
    data['categories_image']       = this.categoriesImage;
    data['categories_datatime']    = this.categoriesDatatime;
    return data;
  }
}