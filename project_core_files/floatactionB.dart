import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: (val) {
          setState(() {
            selectedindex = val;
          });
        },
        iconSize: 40,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("homebage");
                },
                child: Icon(Icons.home_outlined)),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("chat");
                  },
                  child: Icon(Icons.chat)),
              label: "Chat"),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("account");
                  },
                  child: Icon(Icons.person_2_outlined)),
              label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "more"),
        ]);
  }
}
