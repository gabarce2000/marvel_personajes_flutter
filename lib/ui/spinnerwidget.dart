
import 'package:flutter/material.dart';
import 'package:flutter_marvels_characters/models/listpersonajes.dart';
import 'package:flutter_marvels_characters/models/marvelpersonajes.dart';
import 'package:flutter_marvels_characters/request/marvelper_http_request.dart';
import 'package:flutter_marvels_characters/ui/cajaPersonaje.dart';


class SpinnerWidget extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
 return Center(
   child: Container(
     alignment: AlignmentDirectional.bottomCenter,
     child: Column(
       children: <Widget>[
         CircularProgressIndicator()
       ],
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       crossAxisAlignment: CrossAxisAlignment.center,
       ),
     )
   );
 
  }
}