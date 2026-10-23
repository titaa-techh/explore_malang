import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../model/place.dart';

// Repository sederhana untuk mengambil data dummy dari file JSON lokal.
// Pada tahap pengembangan selanjutnya, method loadPlaces() ini bisa diganti
// isinya dengan pemanggilan API (http.get) tanpa mengubah kode di halaman UI.
class PlaceRepository {
  Future<List<Place>> loadPlaces() async {
    final String jsonString =
        await rootBundle.loadString('assets/data/places.json');
    final List<dynamic> jsonList = json.decode(jsonString) as List<dynamic>;
    return jsonList
        .map((item) => Place.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
