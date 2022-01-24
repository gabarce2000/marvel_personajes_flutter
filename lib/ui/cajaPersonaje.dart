
import 'package:flutter_marvels_characters/models/marvelpersonajes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_marvels_characters/ui/personaje.dart';


class CajaPersonaje extends StatelessWidget {
  MarvelPersonaje person;

  CajaPersonaje({required this.person});
 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(this.person.name),
      subtitle: Text(this.person.type.toString()+"(" + this.person.copyright.toString()+ ")"),
    // trailing: Image.network(this.person.getImage()),
    // trailing: Text(this.person.name),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:
        (context) => Personaje (character: this.person)));
      },
    );
  
  }
}