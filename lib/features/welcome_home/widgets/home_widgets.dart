import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// My Home AppBar
Widget customAppBar() {
  var date = DateFormat('EEE d MMMM yyyy').format(DateTime.now());

  return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(color: Colors.indigo[100]),
      child: Row(children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 60),
              const Text('Good Morning \n Trung',
                  style: TextStyle(color: Colors.grey, fontSize: 16)),
              Text(date.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))
            ])),
        const Spacer(),
        const Text("☀  Sunny 32°C ",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold))
      ]));
}

// My Item Card
Widget card(
    {required String image, required String title, required String subtitle}) {
  return SizedBox(
    width: 200,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          // width: 145,
          height: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20))),
      Text(title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
      Text(subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey.shade500))
    ]),
  );
}
