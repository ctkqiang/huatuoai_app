class Menu {
  int? id;
  String? title;
  String? icon;
  String? description;

  Menu({int? id, String? title, String? icon, String? description});

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      id: json["id"],
      title: json["title"],
      icon: json["icon"],
      description: json["description"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "icon": icon,
      "description": description,
    };
  }
}
