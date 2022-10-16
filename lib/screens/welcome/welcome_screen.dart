import 'package:flutter/material.dart';
import 'package:travelapp/utilities/color.dart';

import '../Home/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "images/sunset.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            colorBlendMode: BlendMode.darken,
            color: Colors.black.withOpacity(0.7),
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "This Journey is your home. Explore the world with ou app and get the feeling like your own",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.6, fontSize: 16, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[200],
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                            )
                          ],
                        ),
                        alignment: Alignment.center,
                        child: TextFormField(
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: PrimaryColor,
                              size: 30,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Username",
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[200],
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                            )
                          ],
                        ),
                        alignment: Alignment.center,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: PrimaryColor,
                              size: 30,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Password",
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                            color: PrimaryColor,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                              )
                            ],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(100),
                      //   ),
                      //   width: double.infinity,
                      //   height: 50,
                      //   child: ElevatedButton(
                      //     onPressed: () {
                      //       Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => const HomeScreen()));
                      //     },
                      //     child: Text(
                      //       'Continue',
                      //       style: new TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 17.0,
                      //           fontWeight: FontWeight.bold),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
