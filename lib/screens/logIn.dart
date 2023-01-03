// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gifty/screens/categories.dart';
import 'package:gifty/screens/signUp.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 255, 211, 212).withOpacity(0.83),
                    Color.fromARGB(255, 244, 144, 146),
                  ]),
            ),
          ),
          ListView(
            children: [
              SizedBox(height: 90,),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 500,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(42)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        "LogIn",
                        style: GoogleFonts.roboto(
                            fontSize: 48, fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        width: 230,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all()),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.fromLTRB(8, 8, 25, 8),
                                child: SvgPicture.asset(
                                  'assets/images/email.svg',
                                  height: 35,
                                  width: 35,
                                  color: Colors.black,
                                ),
                              ),
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: GoogleFonts.quicksand(
                                  fontSize: 20,
                                  color: Colors.black.withOpacity(0.25))),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        width: 230,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all()),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.fromLTRB(8, 8, 25, 8),
                                child: SvgPicture.asset(
                                  'assets/images/password.svg',
                                  height: 35,
                                  width: 35,
                                  color: Colors.black,
                                ),
                              ),
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: GoogleFonts.quicksand(
                                  fontSize: 20,
                                  color: Colors.black.withOpacity(0.25))),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: ((_) =>CategoriesPage() ))
                          );
                        },
                        child: Container(
                          width: 125,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 244, 144, 146),
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                              child: Text(
                            "LogIn",
                            style: GoogleFonts.quicksand(
                                fontSize: 20),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>SignUp()) );
                          },
                        child: Container(
                          width: 125,
                          height: 45,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                              child: Text(
                            "SignUp",
                            style: GoogleFonts.quicksand(
                                fontSize: 20),
                          )),
                        ),
                      ),
                       SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("Forgot password ?    ",style:GoogleFonts.robotoMono(fontSize: 12) ,),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
