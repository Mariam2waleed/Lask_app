import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:lask_app/features/article/widgets/article_widgets.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key, required this.articleData});

  final Map articleData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      // Background Color & Image
      Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(articleData['urlToImage'] ?? 'No Image'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.contain))),
      // Overlayer Rounded Box
      Container(
          height: double.infinity,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 250),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: articleDetails(
              title: articleData['title'] ?? "No title",
              image: articleData['urlToImage'] ?? "No image",
              author: articleData['author'] ?? "No author",
              date: articleData['publishedAt'] ?? "No Date",
              description: articleData['description'] ?? "No description")),

      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color:
                  Colors.white24 ?? Colors.grey[400], 
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Row(
            children: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_rounded)),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.celebration_rounded)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.bookmark_border)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.share_outlined)),
            ],
          ),
        ),
      ),
    ]));
  }
}
