import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'op_vd.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Vd()),
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: Column(children: [
        SizedBox(
          height: 30,
        ),
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage(
              "img/4.jpg",
            ),
            radius: 80,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Name  :  Sanghani drashti ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Email  :  sanghanidrashti@gmail.com",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Phone no. : 9725507794",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ]),
    );
  }
}
