class SlideModel {
  int? id, status;
  String? title, description, link, images;

  SlideModel({
    this.id,
    this.status,
    this.title,
    this.description,
    this.link,
    this.images,
  });

  SlideModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    title = json['title'];
    description = json['description'];
    link = json['link'];
    images = json['images'];
  }
}
