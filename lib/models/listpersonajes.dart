import 'package:flutter_marvels_characters/models/marvelpersonajes.dart';

class MarvelCharacters {
  MarvelCharacters();
  static List<MarvelPersonaje> fromJsonList(List<dynamic> jsonlist) {
    List<MarvelPersonaje> listaPersonajes = [];
    if (jsonlist != null) {
      for (var personaje in jsonlist) {
        final character = MarvelPersonaje.fromJson(personaje);
        listaPersonajes.add(character);
      }
    }
    return listaPersonajes;
  }
}