// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'logIn.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
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
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 280,
                  height: 590,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 42, 0, 0),
                        child: Text("SignUp",style:GoogleFonts.roboto(fontSize: 48,fontStyle: FontStyle.italic) ,),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 45,
                        width: 230,
                        padding: EdgeInsets.fromLTRB(34, 10, 10, 10),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " First name & Last name",
                            hintStyle: GoogleFonts.quicksand(
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.25)
                            )
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        height: 45,
                        width: 230,
                        padding: EdgeInsets.fromLTRB(34, 10, 10, 10),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: GoogleFonts.quicksand(
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.25)
                            )
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        height: 45,
                        width: 230,
                        padding: EdgeInsets.fromLTRB(34, 10, 10, 10),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: GoogleFonts.quicksand(
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.25)
                            )
                          ),
                        ),
                      ), 
                      SizedBox(height: 15,),
                      Container(
                        height: 45,
                        width: 230,
                        padding: EdgeInsets.fromLTRB(34, 10, 10, 10),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Confirm Password",
                            hintStyle: GoogleFonts.quicksand(
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.25)
                            )
                          ),
                        ), ),             
                      SizedBox(height: 15,),
                      Container(
                        height: 45,
                        width: 230,
                        padding: EdgeInsets.fromLTRB(34, 10, 10, 10),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone number",
                            hintStyle: GoogleFonts.quicksand(
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.25)
                            )
                          ),
                        ),
                      ),  
                      SizedBox(height: 15,),
                      Container(
                        height: 45,
                        width: 230,
                        padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,),
                            border: InputBorder.none,
                            hintText: "Location",
                            hintStyle: GoogleFonts.quicksand(
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.25)
                            )
                          ),
                        ),
                      ),       
                      //SizedBox(height: 10,),
                      CheckboxListTile(
                        value: true, 
                        onChanged:((value) { value=!value!;}) ,
                        title: Text("Click to agree with policies",style: GoogleFonts.roboto(fontSize: 12),),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor:Colors.black ,
                           ) ,
                                             GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>LogIn()) );
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
                      SizedBox(height: 10,)

                    ],
                  ),
                ),
              ),
            ],
          )

      ],) ,
    );
  }
}