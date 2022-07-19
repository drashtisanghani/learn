import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  IconData? vd;
  String? sd;
  Home(this.vd, this.sd, {Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 20,
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(children: [
            Icon(
              widget.vd ?? Icons.favorite,
            ),
            Text(widget.sd ?? ""),
          ]),
        ));
  }
}
