import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      width: 170,
                      height: 170,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(80)),
                      child: Image.asset(
                        "images/13.jpg",
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                  Text(
                    "register",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 10,
                  ),
                  Text(
                    "Enter your personal information",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Container(
                    height: 20,
                  ),
                  Text(
                    "username",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: ("Enter your name"),
                        hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        filled: true,
                        fillColor: Color.fromARGB(255, 199, 199, 199)),
                  ),
                  Container(
                    height: 10,
                  ),
                  Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: ("Enter your Email"),
                        hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        filled: true,
                        fillColor: Color.fromARGB(255, 199, 199, 199)),
                  ),
                  Container(
                    height: 10,
                  ),
                  Text(
                    "password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: ("Enter password"),
                        hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        filled: true,
                        fillColor: Color.fromARGB(255, 199, 199, 199)),
                  ),
                  Container(
                    height: 10,
                  ),
                  Text(
                    "confirm password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: ("Enter confirm password"),
                        hintStyle: TextStyle(fontSize: 15, color: Colors.black),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        filled: true,
                        fillColor: Color.fromARGB(255, 199, 199, 199)),
                  ),
                ],
              ),
              Container(
                height: 20,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                height: 40,
                textColor: Colors.white,
                color: Colors.orange,
                onPressed: () {
                  Navigator.of(context).pushNamed("homebage");
                },
                child: Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("login");
                },
                child: Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(text: "Have an account? "),
                    TextSpan(
                        text: "login",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold))
                  ])),
                ),
              )
            ],
          ),
        ));
  }
}

