import 'package:flutter/material.dart';

class Abc extends StatefulWidget {
  const Abc({Key? key}) : super(key: key);

  @override
  State<Abc> createState() => _AbcState();
}

class _AbcState extends State<Abc> {
  String email = "drashtisanghani@gmail.com";
  String password = "123456789";
  TextEditingController abc = TextEditingController();
  TextEditingController vd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Column(
        children: [
          SizedBox(height: 100),
          TextField(
            controller: abc,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: vd,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ],
      )),
      appBar: AppBar(),
    );
  }
}
