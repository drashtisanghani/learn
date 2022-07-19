import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 40),
        Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left: 160, top: 30),
            child: CircleAvatar(
                radius: 120,
                backgroundColor: Colors.orangeAccent,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Age : 21",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 170, left: 20),
            child: CircleAvatar(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Text(
                  "Name : Drashti Sanghani",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              radius: 120,
              backgroundColor: Colors.pinkAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CircleAvatar(
              radius: 120,
              backgroundColor: Colors.green,
              backgroundImage: AssetImage("img/5.jpg"),
            ),
          )
        ]),
        SizedBox(
          height: 200,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
              ),
              width: double.infinity,
              height: 30,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 250),
                child:
                    Text("50%", style: TextStyle(fontWeight: FontWeight.bold)),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                height: 30,
                width: 150,
                child: Center(
                    child: Text("30%",
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
              ),
              height: 30,
              width: 100,
              child: Center(
                  child: Text("20%",
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ),
          ]),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Text("Work"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Text("Profile"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text("Other"),
            ),
          ],
        ),
      ]),
    );
  }
}
