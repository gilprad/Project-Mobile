import 'package:gurita/models/artikel.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class Servers {
  static const String url = 'https://jsonplaceholder.typicode.com/posts';

  static Future<List<Artikel>> getArtikels() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<Artikel> artikels = artikelFromJson(response.body);
        return artikels;
      } else {
        return List<Artikel>();
      }
    } catch (e) {}
  }
}
