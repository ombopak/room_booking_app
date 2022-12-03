class Onboarding {
  String? title;
  String? description;
  String? image;

  Onboarding({this.title, this.description, this.image});

  Onboarding.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    map['image'] = image;
    return map;
  }
}
