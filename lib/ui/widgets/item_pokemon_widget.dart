import 'package:app11_pokedex_2024/pages/detail_page.dart';  
import 'package:app11_pokedex_2024/ui/widgets/item_type_widget.dart';  
import 'package:flutter/material.dart';  

class ItemPokemonWidget extends StatelessWidget {  
  final String name; // Cambiar a final  
  final String img;  // Cambiar a final  
  final List<String> type; // Cambiar a final  

  ItemPokemonWidget({  
    required this.name,  
    required this.img,  
    required this.type,  
  });  

  @override  
  Widget build(BuildContext context) {  
    return GestureDetector(  
      onTap: () {  
        Navigator.push(  
          context,  
          MaterialPageRoute(  
            builder: (context) => DetailPage(  
              name: name, // Pasar el nombre  
              img: img,   // Pasar la imagen  
              type: type, // Pasar los tipos  
            ),  
          ),  
        );  
      },  
      child: Container(  
        decoration: BoxDecoration(  
          color: Colors.green.shade300,  
          borderRadius: BorderRadius.circular(18.0),  
        ),  
        child: Stack(  
          children: [  
            Positioned(  
              child: Image.asset(  
                "assets/images/pokeball.png",  
                height: 120,  
                color: Colors.white.withOpacity(0.27),  
              ),  
              bottom: -20,  
              right: -20,  
            ),  
            Positioned(  
              child: Image.network(  
                img,  
                errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {  
                  return Image.asset(  
                    "assets/images/whoisthat.png",  
                    height: 100,  
                  );  
                },  
              ),  
              bottom: -10,  
              right: -10,  
            ),  
            Padding(  
              padding: const EdgeInsets.symmetric(  
                vertical: 15.0,  
                horizontal: 10.0,  
              ),  
              child: Column(  
                crossAxisAlignment: CrossAxisAlignment.start,  
                children: [  
                  Text(  
                    name,  
                    style: TextStyle(  
                      color: Colors.white,  
                      fontSize: 16.0,  
                      fontWeight: FontWeight.bold,  
                    ),  
                  ),  
                  ...type.map((e) => ItemTypeWidget(text: e)).toList(),  
                ],  
              ),  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}