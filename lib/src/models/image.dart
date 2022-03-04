class ImageModel {
  String? title;
  int? id;
  String? url;

  ImageModel(this.id, this.title, this.url);

  // automatic generating
  ImageModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    url = json['url'];
  }

  @override
  String toString() {
    return '$id $title $url';
  }
}
