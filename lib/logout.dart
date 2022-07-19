import 'package:demo/myprofile.dart';
import 'package:demo/om.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  String email = "drashtisanghani@gmail.com";
  String password = "123456789";
  TextEditingController abc = TextEditingController();
  TextEditingController vd = TextEditingController();

  setdata() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("email", "sucess");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "WELCOME",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          SizedBox(
            height: 30,
          ),
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
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (abc.text.isNotEmpty && vd.text.isNotEmpty) {
                  setdata();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyProfile(),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text("your password is invalid"),
                    ),
                  );
                }
              });
            },
            child: Text("Login"),
          ),
        ]),
      ),
    );
  }
}
