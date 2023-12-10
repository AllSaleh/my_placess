class ProfileModel {
  int? id;
  String? name;
  String? email;
  String? gender;
  String? image;

  ProfileModel({this.id, this.name, this.email, this.gender, this.image});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    gender = json['gender'];
    image = json['image'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['name'] = this.name;
  //   data['email'] = this.email;
  //   data['gender'] = this.gender;
  //   data['image'] = this.image;
  //   return data;
  // }
}