
import 'package:flutter_marvels_characters/models/listpersonajes.dart';
import 'package:flutter_marvels_characters/models/marvelpersonajes.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


class MarvelPersonajesHttpRequest {
  //final String API_url =  "https://gateway.marvel.com:443/v1/public/characters?apikey=3fe8a14041f1e55e66471fa6b6690799";
  //final String API_key = "3fe8a14041f1e55e66471fa6b6690799";
  //final String API_keyPrivate = "6267a76efe2913dcd5cd023a138a2a8be120c9d2";

  Future<List<MarvelPersonaje>> getPersonajes() async {
    var url = "https://gateway.marvel.com:443/v1/public/characters?ts=1000&apikey=3fe8a14041f1e55e66471fa6b6690799&hash=a59bdbf2b90119a5d4481f341d46e00d";
    //var url = API_url +  "/marvelpersonajes/personajes?api_key" +  API_key +  "&language=es";
    final res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      final respuestaJSON = json.decode(res.body);
      final personajesMarvel = MarvelCharacters.fromJsonList(respuestaJSON);
      return personajesMarvel;
    }
    return <MarvelPersonaje>[];
  }
}