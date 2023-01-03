

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gifty/screens/homePage.dart';
import 'package:gifty/widgets/category.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(height: 35,),
        Align(
          alignment: Alignment.center,
          child: Text("Categories",style: GoogleFonts.roboto(fontSize: 35,letterSpacing: 5,color:Color.fromARGB(255, 244, 144, 146) ),)),
        SizedBox(height: 55,),
        Align(
          alignment: Alignment.center,
          child: Text("For a better experience \nchoose some of this topics:",style: GoogleFonts.roboto(fontSize: 20),),
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Category(text: "Stuffed \nAnimal"),
          Category(text: "Candels"),
        ],),
        SizedBox(height: 25,),
                Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Category(text: "Perfumes"),
          Category(text: "Toys"),
        ],),SizedBox(height: 25,),
                Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Category(text: "Jewelry"),
          Category(text: "Health &\nFitness"),
        ],),
        SizedBox(height: 25,),
                Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Category(text: "Beauty &\nStyle "),
          Category(text: "Crafts"),
        ],),
         SizedBox(height: 25,),
                Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Category(text: "Flowers "),
          Container(
            width: 125,
            height: 45,
            child: Image.asset("assets/images/menu.png")),
        ],),
        SizedBox(height: 25,),
           Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
            height: 45,
            width: 125,
            child: Text(""),
            ),
          Container(
            width: 125,
            height: 45,
            padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
            child:GestureDetector(
            onTap: (() {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomePage())); }),
            child: Container(
              height: 40,
              width: 70,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 211, 212),
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text("Done",style:GoogleFonts.robotoMono(fontSize: 12) ,textAlign: TextAlign.center,)),
            ),
          ) ,),
        ],),
        SizedBox(height: 100,)

      ],),
    );
  }
}
