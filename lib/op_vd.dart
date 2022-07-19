import 'package:demo/contact%20us.dart';
import 'package:demo/feedback.dart';
import 'package:demo/logout.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'om.dart';

class Vd extends StatefulWidget {
  const Vd({Key? key}) : super(key: key);

  @override
  State<Vd> createState() => _VdState();
}

class _VdState extends State<Vd> {
  remove() async {
    SharedPreferences _pre = await SharedPreferences.getInstance();
    await _pre.remove("email");
  }

  List<Map<String, dynamic>> ds = [
    {
      "icon": Icons.add_to_home_screen,
      "456": "Home",
      "navigate": Om(),
    },
    {
      "icon": Icons.contacts,
      "456": "Contact Us",
      "navigate": ContactUs(),
    },
    {
      "icon": Icons.feedback,
      "456": "Feedback",
      "navigate": FeedBack(),
    },
    {
      "icon": Icons.logout,
      "456": "Login",
      "navigate": Logout(),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          height: 260,
          width: 400,
          color: Colors.greenAccent,
          child: Column(
            children: const [
              SizedBox(height: 30),
              CircleAvatar(
                backgroundImage: AssetImage(
                  "img/4.jpg",
                ),
                radius: 70,
              ),
              SizedBox(height: 5),
              Text("Drashti Sanghani",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              SizedBox(height: 5),
              Text("drashtisanghani@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ],
          ),
        ),
        ListView.builder(
          itemCount: ds.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              if (index == 3) {
                remove();
              }
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ds[index]["navigate"],
                ),
              );
            },
            child: ListTile(
              leading: Icon(ds[index]["icon"]),
              title: Text(ds[index]["456"]),
            ),
          ),
        )
      ],
    ));
  }
}
