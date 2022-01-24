import 'dart:convert';

/*MarvelPersonaje marvelFromJson(String str) =>
    MarvelPersonaje.fromJson(json.decode(str));*/

class MarvelPersonaje {
  String name;
  String type;
  String copyright;
 // String path;
  // String email;
  //String city;
  //String username;

  MarvelPersonaje(
    {
    required this.name,
    required this.type,
    required this.copyright,
   // required this.path,
    }
  );
  // required this.email,
  //required this.city,
  //required this.username});

  factory MarvelPersonaje.fromJson(Map<String, dynamic> json) =>
      MarvelPersonaje(
          name: json["name"],
          type: json["type"],
          copyright: json["copyright"],
        //  path: json["path"]
          );
  //   email: json["email"],
  // city: json["city"],
  //username: json["username"]);

 // String getImage() {
 // return "http://i.annihil.us/u/prod/marvel/i/mg/" + this.path;
 // }
}

