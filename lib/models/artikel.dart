import 'dart:convert';

List<Artikel> artikelFromJson(String str) =>
    List<Artikel>.from(json.decode(str).map((x) => Artikel.fromJson(x)));

String artikelToJson(List<Artikel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Artikel {
  Artikel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory Artikel.fromJson(Map<String, dynamic> json) => Artikel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
