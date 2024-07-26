import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget articleDetails(
    {required String title,
    required String image,
    required String author,
    required String date,
    required String description}) {
  DateTime publishedDate = DateTime.parse(date);
  DateFormat outputFormat = DateFormat('MMM d, yyyy');
  String formattedDate = outputFormat.format(publishedDate);

  return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  Bold Title
            Text(title,
                textAlign: TextAlign.start,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 22)),
            const SizedBox(height: 15),
            // Author And Date
            Row(children: [
              Container(
                  height: 30,
                  width: 30,
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(image),
                          alignment: Alignment.center,
                          fit: BoxFit.fill),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50)))),
              Text('$author·',
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.grey)),
              Text(formattedDate,
                  style: const TextStyle(fontSize: 12, color: Colors.grey))
            ]),
            const SizedBox(height: 20),
            // Description
            SizedBox(
                // height: 500,
                child: SingleChildScrollView(
                    child: Text(description,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontSize: 18, color: Colors.black))))
          ]));
}
