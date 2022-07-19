import 'package:flutter/material.dart';

import 'beaytyproduct.dart';
import 'dresses.dart';
import 'footwear.dart';
import 'hand bag.dart';
import 'jewellery.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                "Hand Bag",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                "Jewellery",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                "Footwear",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                "Dresses",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                "beautyproduct",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 8,
          ),
        ],
        title: Text(
          "Women",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                HandBag(),
                Jewellery(),
                Footwear(),
                Dresses(),
                Beauty(),
              ],
            ),
          ),
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (countext, index) => Container())
        ],
      ),
    );
  }
}
