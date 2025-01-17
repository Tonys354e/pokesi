import 'package:flutter/material.dart';

class ItemTypeWidget extends StatelessWidget {
  String text;

  ItemTypeWidget({super.key, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 4.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 14.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.25),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}