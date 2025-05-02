import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

import 'constt.dart';

// ignore: must_be_immutable
class chat1 extends StatefulWidget {
  static const String routeName = "chat1";

  static const String account = "account";

  @override
  State<chat1> createState() => _chat1State();
}

class _chat1State extends State<chat1> {
  TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          iconSize: 40,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.white,
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
                      Navigator.of(context).pushNamed("account");
                    },
                    child: Icon(Icons.person_2_outlined)),
                label: "Account"),
          ]),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat),
            Text(
              "Taf",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "wila Ai",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.grey[200],
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: chat.length,
                  itemBuilder: (_, Index) => BubbleSpecialThree(
                    text: chat[Index].toString(),
                    color: Colors.white,
                    tail: true,
                    textStyle: TextStyle(color: Colors.orange, fontSize: 16),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                height: 100,
                color: Colors.black,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: text,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Enter your message',
                          labelStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.orange, // اللون اللي انت عايزه
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:
                                  Colors.orange, // لون الحواف لما مش بيكون محدد
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      //     TextFormField(
                      //   decoration: InputDecoration(
                      //       hintText: ("Enter"),
                      //       hintStyle:
                      //           TextStyle(fontSize: 15, color: Colors.orange),
                      //       border: OutlineInputBorder(

                      //         borderRadius: BorderRadius.circular(50),
                      //         borderSide: BorderSide(color: Colors.orange),
                      //       )),
                      //   controller: text,
                      //   style: TextStyle(color: Colors.orange),
                      // ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {});
                        chat.add(text.text);
                        text.text = '';
                      },
                      icon: Icon(Icons.send),
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
