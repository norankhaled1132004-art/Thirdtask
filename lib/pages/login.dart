// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 35),
                        Text(
                          "Log in",
                          style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                        ),
                        SizedBox(height: 35),
                        SvgPicture.asset("assets/icons/login.svg", width: 288),
                        SizedBox(height: 35),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(66),
                          ),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.purple[800],
                              ),
                              hintText: "Your Email :",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 23),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(66),
                          ),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              suffix: Icon(
                                Icons.visibility,
                                color: Colors.purple[900],
                              ),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.purple[800],
                                size: 19,
                              ),
                              hintText: "Password :",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 17),
                        ElevatedButton(
                          onPressed: () {},

                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                              Colors.purple,
                            ),
                            padding: WidgetStateProperty.all(
                              EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.25,
                                vertical: 10,
                              ),
                            ),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                          child: Text("login", style: TextStyle(fontSize: 24)),
                        ),
                        SizedBox(height: 15),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an accout? "),

                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/signup");
                              },
                              child: Text(
                                " sign up",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    child: Image.asset("assets/images/main_top.png", width: 11),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/login_bottom.png",
                      width: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
