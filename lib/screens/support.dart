// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){},
            child: ListTile(title: Text("Shipping and order Status",style: GoogleFonts.robotoMono(fontSize: 18),),
            trailing: Image.asset('assets/images/arrow.png'), 
            ),
          ),
          SizedBox(height: 15,),
           GestureDetector(
            onTap: (){},
             child: ListTile(title: Text("Exchanges and returns",style: GoogleFonts.robotoMono(fontSize: 18),),
                     trailing: Image.asset('assets/images/arrow.png'), 
                     ),
           ),
          SizedBox(height: 15,),
           GestureDetector(
            onTap: (){},
             child: ListTile(title: Text("Payment",style: GoogleFonts.robotoMono(fontSize: 18),),
                     trailing: Image.asset('assets/images/arrow.png'), 
                     ),
           ),
          SizedBox(height: 15,),
           GestureDetector(
            onTap: (){},
             child: ListTile(title: Text("product",style: GoogleFonts.robotoMono(fontSize: 18),),
                     trailing: Image.asset('assets/images/arrow.png'), 
                     ),
           ),  
          SizedBox(height: 90,) ,
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                color:Color.fromARGB(255, 244, 144, 146) ,
                borderRadius: BorderRadius.circular(17)
              ),
              child: Center(child: Text("Contact",style: GoogleFonts.robotoMono(fontSize: 20,color: Colors.white,letterSpacing: 1,fontWeight: FontWeight.w300),)),
            ),
          )             
        ],
      ),
    );
  }
}