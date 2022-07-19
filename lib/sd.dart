import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class Sd extends StatefulWidget {
  const Sd({Key? key}) : super(key: key);

  @override
  State<Sd> createState() => _SdState();
}

class _SdState extends State<Sd> {
  @override
  late PageController pageController;
  int selectedindex = 1;
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedindex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(controller: pageController, children: [
          Container(
            color: Colors.lightBlue,
          ),
          Container(
            color: Colors.cyanAccent,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.pinkAccent,
          ),
        ]),
        bottomNavigationBar: WaterDropNavBar(
            barItems: [
              BarItem(
                  filledIcon: Icons.camera_alt,
                  outlinedIcon: Icons.camera_alt_outlined),
              BarItem(
                filledIcon: Icons.mail,
                outlinedIcon: Icons.mail_outline,
              ),
              BarItem(
                  filledIcon: Icons.message,
                  outlinedIcon: Icons.message_outlined),
              BarItem(
                  filledIcon: Icons.camera_alt,selectedIndex: selectedindex,
                  onItemSelected: (index) {
                    setState(() {
                      selectedindex = index;
                    });
                    pageController.animateToPage(selectedindex,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInExpo);
                  }
                  outlinedIcon: Icons.camera_alt_outlined),
            ],
            ));
  }
}
