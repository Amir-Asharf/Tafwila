import 'package:Tafwila/project/Enddrawer.dart';
import 'package:Tafwila/project/floatactionB.dart';

import 'package:flutter/material.dart';
import 'category_icons.dart';
import 'service_cards.dart';

class homebage extends StatefulWidget {
  const homebage({super.key});
  static const String routeName = "homebage";
  @override
  State<homebage> createState() => _homebageState();
}

class _homebageState extends State<homebage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "         Taf",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            Text(
              "wila",
              style: TextStyle(fontSize: 30, color: Colors.orange),
            )
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.grey[200],
      ),
      endDrawer: Enddrawer(),
      bottomNavigationBar: BottomNavigation(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            _buildSearchBar(),
            SizedBox(height: 30),
            _buildSectionTitle("Categories"),
            SizedBox(height: 20),
            CategoryIcons(),
            SizedBox(height: 20),
            _buildSectionTitle("What do you want ?"),
            SizedBox(height: 10),
            ServiceCards(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "search",
              hintStyle: TextStyle(fontSize: 25),
              prefixIcon: const Icon(
                Icons.search,
                size: 30,
              ),
              border: InputBorder.none,
              fillColor: Colors.grey[200],
              filled: true,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
