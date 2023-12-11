class RecomndationModel {
  int? id;
  String? name;
  String? description;
  String? type;
  String? phone;
  String? location;
  dynamic rate;
  int? category;
  List<Images>? images;
  bool? isFavorites;
  int? isApproved;

  RecomndationModel(
      {id,
      name,
      description,
      type,
      phone,
      location,
      rate,
      category,
      images,
      isFavorites,
      isApproved});

  RecomndationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    type = json['type'];
    phone = json['phone'];
    location = json['location'];
    rate = json['rate'];
    category = json['category'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    isFavorites = json['is_favorites'];
    isApproved = json['is_approved'];
  }
}

class Images {
  int? id;
  String? url;

  Images({id, url});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['url'] = url;
    return data;
  }
}
