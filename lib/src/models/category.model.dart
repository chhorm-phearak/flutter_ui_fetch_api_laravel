class CategoryModel {
  int? id;
  String? name;
  String? images;
  String? code;
  String? description;

  CategoryModel({
    this.id,
    this.name,
    this.images,
    this.code,
    this.description,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    name = json['name'] ?? "";
    images = json['images'] ?? "";
    code = json['code'] ?? "";
    description = json['description'] ?? "";
  }
}
