import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var homebage;

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
                    "login",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 10,
                  ),
                  Text(
                    "login to continue using the App",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Container(
                    height: 20,
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
                    "number phone",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: ("Enter your phone"),
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
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    alignment: Alignment.topRight,
                    child: Text(
                      "forgot pasword ?",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
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
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                height: 15,
              ),
              Text(
                "OR Login with",
                textAlign: TextAlign.center,
              ),
              Container(
                height: 10,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                height: 40,
                textColor: Colors.white,
                color: Colors.black,
                onPressed: () {},
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Login with Google"),
                ]),
              ),
              Container(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("signup");
                },
                child: Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(text: "Don’t Have an account? "),
                    TextSpan(
                        text: "Register",
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

