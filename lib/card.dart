import 'package:flutter/material.dart';

class Drashti extends StatefulWidget {
  IconData? star;
  String? title;
  String? subtitle;
  Drashti(this.star, this.title, this.subtitle, {Key? key}) : super(key: key);

  @override
  State<Drashti> createState() => _DrashtiState();
}

class _DrashtiState extends State<Drashti> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 110),
                child: Icon(widget.star ?? Icons.star, color: Colors.blue),
              ),
              Text(
                widget.title ?? "",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(widget.subtitle ?? ""),
            ]),
          ),
        ));
  }
}
