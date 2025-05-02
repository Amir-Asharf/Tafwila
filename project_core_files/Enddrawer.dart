import 'package:flutter/material.dart';

class Enddrawer extends StatefulWidget {
  const Enddrawer({super.key});

  @override
  State<Enddrawer> createState() => _EnddrawerState();
}

class _EnddrawerState extends State<Enddrawer> {
  @override
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 40,
            // )
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("login");
                    },
                    child: Text("Logout")),
                SizedBox(
                  width: 8,
                ),
                IconButton.filled(
                  onPressed: () {
                    Navigator.of(context).pushNamed("login");
                  },
                  icon: Icon(Icons.logout),
                ),
              ],
            ),

            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("chat");
                    },
                    child: Text("Chat")),
                SizedBox(
                  width: 8,
                ),
                SizedBox(
                  width: 8,
                ),
                IconButton.filled(
                    onPressed: () {
                      Navigator.of(context).pushNamed("chat");
                    },
                    icon: Icon(Icons.chat)),
              ],
            ),

            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("account");
                    },
                    child: Text("Account")),
                SizedBox(
                  width: 8,
                ),
                IconButton.filled(
                    onPressed: () {
                      Navigator.of(context).pushNamed("account");
                    },
                    icon: Icon(Icons.account_box_rounded)),
              ],
            ),
          ]),
    );
  }
}
