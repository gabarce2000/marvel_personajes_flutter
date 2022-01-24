import 'package:flutter/material.dart';
import 'package:flutter_marvels_characters/models/marvelpersonajes.dart';
import 'package:flutter_marvels_characters/request/marvelper_http_request.dart';
import 'package:flutter_marvels_characters/ui/cajaPersonaje.dart';
import 'package:flutter_marvels_characters/ui/spinnerwidget.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MarvelCharactersPage(),
    );
  }
}

class MarvelCharactersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personajes de Marvel'),
      ),
      body: FutureBuilder(
        future: MarvelPersonajesHttpRequest().getPersonajes(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot){
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var personaje = snapshot.data![index];
                return CajaPersonaje(person: personaje);
              },
            );
          }
          else{
          return SpinnerWidget();
           }
        },
      ),
    );
  }
}

