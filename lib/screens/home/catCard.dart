
import 'package:flutter/material.dart';
import 'package:hellokatty/screens/home/cat.dart';

class CatCard extends StatelessWidget {
  final Cat cat;

  CatCard({required this.cat});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(cat.imageUrl, fit: BoxFit.cover), // In production, use a cached image network widget
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(cat.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                color: Color(0xFF31BFAF))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('${cat.gender} - ${cat.age}'),



          ),
        ],
      ),
    );
  }
}
