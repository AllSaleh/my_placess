class DetilsModel {
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

  DetilsModel(
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

  DetilsModel.fromJson(Map<String, dynamic> json) {
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['type'] = type;
    data['phone'] = phone;
    data['location'] = location;
    data['rate'] = rate;
    data['category'] = category;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['is_favorites'] = isFavorites;
    data['is_approved'] = isApproved;
    return data;
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
