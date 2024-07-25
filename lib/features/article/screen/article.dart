import 'package:flutter/material.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key, required this.articleData});

  final Map articleData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      // Background Color & Image
      Container(
          height: double.maxFinite,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(articleData['urlToImage'] ?? 'No Image'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.contain))),
      // Overlayer Box
      Container(
          height: double.infinity,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 250),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //  Bold Title
                    Text(articleData['title'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    // Description
                    Text(articleData['author'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            color: Colors.grey)),
                  ])))
    ]));
  }
}

// Pagenation //