import 'package:flutter/material.dart';

class Drashti extends StatefulWidget {
  const Drashti({Key? key}) : super(key: key);

  @override
  State<Drashti> createState() => _DrashtiState();
}

class _DrashtiState extends State<Drashti> {
  bool value = false;
  Object? store = "select";
  dynamic color = Colors.red;
  bool red = false;
  bool green = false;
  bool blue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          red
              ? CircleAvatar(
                  backgroundColor: Colors.red,
                )
              : Container(),
          green
              ? CircleAvatar(
                  backgroundColor: Colors.green,
                )
              : Container(),
          blue ? CircleAvatar() : Container(),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                child: Text("red"),
                onTap: () {
                  setState(() {
                    red = true;
                    green = false;
                    blue = false;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("red"),
                      ),
                    );
                  });
                }),
            GestureDetector(
              child: Text("green"),
              onTap: () {
                setState(() {
                  green = true;
                  red = false;
                  blue = false;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.green,
                      content: Text("green"),
                    ),
                  );
                });
              },
            ),
            GestureDetector(
              child: Text("blue"),
              onTap: () {
                setState(() {
                  blue = true;
                  red = false;
                  green = false;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.blue,
                      content: Text("blue"),
                    ),
                  );
                });
              },
            ),
          ],
        ),
        Center(
            child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("delete"),
                content: Text("yes"),
                actions: [
                  TextButton(
                    onPressed: () {},
                    child: Text("ok"),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.cancel),
                  ),
                ],
              ),
            );
          },
          child: Text("ok"),
        )),
        FloatingActionButton(onPressed: () {
          setState(() {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Downloding....")),
            );
          });
        }),
        TextButton(
          onPressed: () {},
          child: Text("hyy"),
        ),
        ExpansionTile(
          title: Text("drashti "),
          initiallyExpanded: true,
          children: [
            Text("hi"),
            Text("hello"),
          ],
          trailing: (value) ? Text("close") : Text("open"),
          onExpansionChanged: (val) {
            setState(() {
              value = val;
            });
          },
        ),
        DropdownButton(
            value: store,
            items: [
              DropdownMenuItem(
                value: "select",
                child: Text("select"),
              ),
              DropdownMenuItem(
                value: "back",
                child: Text("back"),
              ),
              DropdownMenuItem(
                value: "data",
                child: Text("data"),
              ),
            ],
            onChanged: (val) {}),
      ]),
    );
  }
}
