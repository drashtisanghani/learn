import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Phone extends StatefulWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  List<Map<String, dynamic>> dd = [
    {"image": "img/o.jpg", "name": "om", "number": 9727510784},
    {"image": "img/m.jpg", "name": "dady", "number": 9574477794},
    {"image": "img/d.jpg", "name": "drashti", "number": 9725507794},
    {"image": "img/r.jpg", "name": "rensi", "number": 6353804857},
    {"image": "img/kinju.jpg", "name": "kinju", "number": 7016378180},
    {"image": "img/g.jpg", "name": "priyal", "number": 9081317682},
    {"image": "img/s.jpg", "name": "shobha aunty ", "number": 6354991540},
    {"image": "img/vd.jpg", "name": "dabhi", "number": 9157586789},
    {"image": "img/dd.jpg", "name": "dharmesh uncle", "number": 9824847871},
  ];
  lunchNumber(String s) async {
    await launchUrl(Uri.parse('tel://$s'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone"),
        actions: [
          Icon(Icons.add),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 8,
          ),
        ],
      ),
      body: Column(children: [
        ListView.builder(
          itemCount: dd.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(dd[index]["image"]),
            ),
            title: Text(dd[index]["name"]),
            trailing: InkWell(
              onTap: () {
                lunchNumber(dd[index]["number"].toString());
              },
              child: Icon(Icons.call),
            ),
          ),
        ),
      ]),
    );
  }
}

class LaunchUrl {
  LaunchUrl(Uri parse);
}
