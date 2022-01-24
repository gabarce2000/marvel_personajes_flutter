import 'package:flutter_marvels_characters/models/marvelpersonajes.dart';
import 'package:flutter/material.dart';


class Personaje extends StatelessWidget {
  MarvelPersonaje character;
  Personaje({required this.character}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.character.name),
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
        //  Image.network(this.character.getImage()),
          Text(this.character.copyright)
        ],
      ),
    );
  }
}
