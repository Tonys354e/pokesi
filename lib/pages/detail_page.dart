import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String img;
  final List<String> type;

  const DetailPage({
    super.key,
    required this.name,
    required this.img,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 217, 166),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 15, 217, 166),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Wrap(
            children: type.map((t) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color:
                      Colors.white.withOpacity(0.3), // Cambia la opacidad aquí
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  t,
                  style: TextStyle(color: Colors.white70),
                ),
              );
            }).toList(),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: Image.network(
              img,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
