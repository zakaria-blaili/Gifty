

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.name, required this.price});
final String name;
final double price;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(children: [
                        Container(
                          height: 159,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(20) ,topRight:Radius.circular(20) ,),
                            image: DecorationImage(image: AssetImage('assets/images/loading.gif'),fit: BoxFit.cover)
                        ),),
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(),
                             borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20) ,bottomRight:Radius.circular(20) ,),
                          ),
                          child: Column(children: [
                            Text(name,style:GoogleFonts.quicksand(fontSize: 12) ,),
                            Text(price.toString()+"\$",style:GoogleFonts.quicksand(fontSize: 12) ,),
                          ],),
                        )
                      ]),
                    ),
    );
  }
}

class ItemCard2 extends StatelessWidget {
  const ItemCard2({super.key, required this.name, required this.price});
final String name;
final double price;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(children: [
                        Container(
                          height: 159,
                          width: 230,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(20) ,topRight:Radius.circular(20) ,),
                            image: DecorationImage(image: AssetImage('assets/images/loading.gif'),fit: BoxFit.cover)
                        ),),
                        Container(
                          width: 230,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(),
                             borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20) ,bottomRight:Radius.circular(20) ,),
                          ),
                          child: Column(children: [
                            Text(name,style:GoogleFonts.quicksand(fontSize: 16) ,),
                            Text(price.toString()+"\$",style:GoogleFonts.quicksand(fontSize: 12) ,),
                          ],),
                        )
                      ]),
                    ),
    );
  }
}