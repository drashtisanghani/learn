import 'package:flutter/material.dart';

import 'op_vd.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  bool feedback = false;
  String val = "";
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Vd(),
      ),
      appBar: AppBar(
        title: Text("Feedback"),
      ),
      body: Column(children: [
        SizedBox(height: 20),
        TextField(
          controller: textEditingController,
          onChanged: (value) {
            setState(() {
              val = value;
            });
          },
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(
              () {
                feedback = true;
                print(val);
              },
            );
          },
          child: Text("OK"),
        ),
        SizedBox(height: 20),
        (feedback) ? Text(textEditingController.text) : Container(),
      ]),
    );
  }
}
