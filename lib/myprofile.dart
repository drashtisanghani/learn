import 'dart:io';

import 'package:demo/card.dart';
import 'package:demo/profilecard.dart';
import 'package:demo/test.dart';
import 'package:demo/op_vd.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  ImagePicker imagePicker = ImagePicker();
  XFile? img;
  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffed7e51),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Test(),
                      ),
                    );
                  },
                  child: Icon(Icons.account_circle)),
            )
          ],
        ),
        drawer: Drawer(child: Vd()),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                width: 420,
                height: 370,
                color: Color(0xffed7e51),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Row(
                        children: [
                          Text(
                            "My Profile",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 66,
                          backgroundColor: Color(0xffed7e51),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext contex) => AlertDialog(
                                        // backgroundColor: Colors.transparent,
                                        content: (image == null)
                                            ? Image.asset("img/1.jpg")
                                            : Image.file(image!),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("Cancle"),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text("Ok"),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.add))
                                        ],

                                        // content: Text(
                                        //     "raja ram, mohan rai akjbad bkja adkljnhsdkn daslinl"),
                                        title: Row(
                                          children: [
                                            Text("om"),
                                            Text("Are you sure ?"),
                                          ],
                                        ),
                                      ));
                            },
                            child: (image != null)
                                ? CircleAvatar(
                                    radius: 60,
                                    backgroundImage: FileImage(image!),
                                  )
                                : CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage("img/1.jpg"),
                                  ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90, top: 100),
                        child: GestureDetector(
                          onTap: () async {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: Text("Choose your Option"),
                                      content: Container(
                                        height: 100,
                                        child: Column(
                                          children: [
                                            GestureDetector(
                                                child: Icon(Icons.camera_alt),
                                                onTap: () async {
                                                  img = await imagePicker
                                                      .pickImage(
                                                          source: ImageSource
                                                              .camera);

                                                  if (img != null) {
                                                    setState(() {
                                                      image = File(img!.path);
                                                    });
                                                  } else {
                                                    setState(() {
                                                      image = null;
                                                      image = File(img!.path);
                                                    });
                                                  }
                                                }),
                                            Text("camera"),
                                            GestureDetector(
                                                child: Icon(Icons.image),
                                                onTap: () async {
                                                  img = await imagePicker
                                                      .pickImage(
                                                          source: ImageSource
                                                              .gallery);

                                                  if (img != null) {
                                                    setState(() {
                                                      image = File(img!.path);
                                                    });
                                                  } else {
                                                    setState(() {
                                                      image = null;
                                                      image = File(img!.path);
                                                    });
                                                  }
                                                  Navigator.pop(context);
                                                }),
                                            Text("gallery"),
                                          ],
                                        ),
                                      ),
                                    ));
                          },
                          child: CircleAvatar(
                            radius: 20,
                            child: Icon(Icons.camera_alt),
                          ),
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Drashti Sanghani",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          color: Colors.white,
                        ),
                        Text(
                          "34 kilometers",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 330.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileCard("54%", null, "Progress", false),
                    ProfileCard(null, Icons.add, null, true),
                    ProfileCard("152", null, "Level", false),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 430,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Drashti(Icons.star, "13", "New matches"),
                        Drashti(Icons.mood_bad_outlined, "21", "Unmatched me"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Drashti(Icons.checklist_outlined, "264", "All matches"),
                        Drashti(Icons.refresh, "42", "Rematches"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Drashti(Icons.visibility, "404", "Profile Visitors"),
                        Drashti(Icons.favorite, "42", "Super likes"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
