import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  String? title;
  String? subTitle;
  IconData? add;
  bool view;
  ProfileCard(this.title, this.add, this.subTitle, this.view, {Key? key})
      : super(key: key);

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
          height: 70,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (widget.view)
                  ? Icon(Icons.add)
                  : Text(
                      widget.title ?? "",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
              (widget.view) ? SizedBox() : Text(widget.subTitle ?? ""),
            ],
          )),
    );
  }
}
