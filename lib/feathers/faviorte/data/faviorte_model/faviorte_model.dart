class FaviorteModel {
  int? id;
  String? name;
  bool? isFavorites;

  FaviorteModel({this.id, this.name, this.isFavorites});

  FaviorteModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    isFavorites = json['is_favorites'];
  }

 
}