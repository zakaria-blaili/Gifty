// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:gifty/widgets/itemCard.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
          child: Text(
            "Gifty",
            style: GoogleFonts.macondoSwashCaps(fontSize: 28),
          ),
        )),
        backgroundColor: Colors.transparent,
        actions: [Image.asset('assets/images/profilecircle.png')],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 244, 144, 146),
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(30))),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          ItemCard2(name: "N°5 Chanel", price: 70)
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 35,
                width: 90,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 244, 144, 146),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  "Continue",
                  style: GoogleFonts.roboto(fontSize: 16, color: Colors.white),
                )),
              ),
            ),
            Text("Total: 70\$",style: GoogleFonts.roboto(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
