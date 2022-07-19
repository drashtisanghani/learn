import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo/op_vd.dart';

class Om extends StatefulWidget {
  const Om({Key? key}) : super(key: key);

  @override
  State<Om> createState() => _OmState();
}

class _OmState extends State<Om> {
  List<Map<String, dynamic>> abc = [
    {"icon": Icons.favorite, "title": "like"},
    {"icon": Icons.favorite, "title": "like"},
    {"icon": Icons.favorite, "title": "like"},
    {"icon": Icons.favorite, "title": "like"},
    {"icon": Icons.favorite, "title": "like"},
    {"icon": Icons.favorite, "title": "like"},
    {"icon": Icons.favorite, "title": "like"},
    {"icon": Icons.favorite, "title": "like"},
    {"icon": Icons.favorite, "title": "like"},
    {"icon": Icons.favorite, "title": "like"},
    {"icon": Icons.favorite, "title": "like"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Vd(),
      ),
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              shrinkWrap: true,
              itemCount: abc.length,
              itemBuilder: (context, index) => Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Icon(abc[index]["icon"]),
                      Text(abc[index]["title"]),
                    ],
                  )),
            ),
          ),
        ]),
      ),
    );
  }
}
