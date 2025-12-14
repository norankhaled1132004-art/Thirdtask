import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              // الصورة اللي فوق
              Positioned(
                left: 0,
                top: 0,
                child: Image.asset("assets/images/main_top.png", width: 120),
              ),

              // المحتوى الأساسي
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 20),

                    Image.asset("assets/images/login.png", height: 200),

                    SizedBox(height: 20),

                    // زرار login
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.purple,
                          ),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 12),
                          ),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text("Login", style: TextStyle(fontSize: 20)),
                      ),
                    ),

                    SizedBox(height: 17),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // الصورة اللي تحت
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/login_bottom.png",
                  width: 120,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
