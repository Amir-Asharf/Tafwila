import 'package:flutter/material.dart';

class start2 extends StatefulWidget {
  const start2({super.key});

  @override
  State<start2> createState() => _start2State();
}

class _start2State extends State<start2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: PageView(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    "images/13.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 80),
                        child: Text(
                          "Get stard by",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 80),
                        child: Text(
                          "creating your account",
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.orange,
                              Colors.black
                            ], // ← غير الألوان زي ما تحب
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 40,
                          textColor: Colors.black,
                          color: Colors
                              .transparent, // نخليه شفاف عشان يظهر التدرج من الContainer
                          elevation: 0, // نشيل الظل عشان يكون شكله أنعم
                          onPressed: () {
                            Navigator.of(context).pushNamed("signup");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "sign up",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.orange,
                              Colors.black
                            ], // ← غير الألوان زي ما تحب
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 40,
                          textColor: Colors.black,
                          color: Colors
                              .transparent, // نخليه شفاف عشان يظهر التدرج من الContainer
                          elevation: 0, // نشيل الظل عشان يكون شكله أنعم
                          onPressed: () {
                            Navigator.of(context).pushNamed("login");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.orange, Colors.black],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed("signup");
                          },
                          child: Icon(
                            Icons.arrow_circle_right_outlined,
                            color: Colors.black,
                            size: 50,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
