class ProductModel {
  int? id;
  String? name;
  String? images;
  String? description;
  double? price;
  int? category_id;

  ProductModel({
    this.id,
    this.name,
    this.images,
    this.description,
    this.price,
    this.category_id,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json["id"] ?? 0;
    name = json["name"] ?? "";
    images = json["images"] ?? "";
    description = json["description"] ?? "";
    price = double.parse(json["price"]) ?? 0.0;
  }
}
