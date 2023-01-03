
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/itemCard.dart';

class homebody extends StatelessWidget {
  const homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Find the suitable gift \nfor your beloved ones:",
              style: GoogleFonts.robotoMono(fontSize: 18,fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 30,),
              Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                height: 45,
                width: 240,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: GoogleFonts.robotoMono(
                        fontSize: 16, color: Colors.black.withOpacity(0.5)),
                    border: InputBorder.none,
                    prefixIcon: Image.asset(
                      'assets/images/search.png',
                      height: 25,
                      width: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/images/filter.png',
                height: 30,
                width: 30,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ItemCard(name: "Butterfly Earrings", price: 6),
              ItemCard(name: "N°5 Chanel", price: 70),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ItemCard(name: "Flower bouquet", price: 20),
              ItemCard(name: "Customized necklace", price: 7),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ItemCard(name: "Butterfly Earrings", price: 600),
              ItemCard(name: "N°5 Chanel", price: 1700),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ItemCard(name: "Butterfly Earrings", price: 600),
              ItemCard(name: "N°5 Chanel", price: 1700),
            ],
          ),


        ],
      );
  }
}