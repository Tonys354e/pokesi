class PokemonModel1{
  String name;
  String img;
  List<String> type;
  PokemonModel1({
    required this.name,
    required this.img,
    required this.type,

  });
 factory PokemonModel1.fromJson(Map<String, dynamic> json) => PokemonModel1(
    name: json["name"],
    img: json["img"],
    type: List<String>.from(json["type"].map((e)=>e)), 
    );
  }
