class BrandModel {
  int? id;
  String? name;
  String? description;
  String? code;
  //int? category_id;

  BrandModel({
    this.id,
    this.name,
    this.description,
    this.code,
    //this.category_id,
  });

  BrandModel.fromJson(Map<String, dynamic> json) {
    id = json["id"] ?? 0;
    name = json["name"] ?? "";
    description = json["description"] ?? "";
    code = json["code"] ?? "";
  }
}
