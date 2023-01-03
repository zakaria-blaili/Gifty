// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:gifty/screens/cart.dart';
import 'package:gifty/screens/favs.dart';
import 'package:gifty/screens/home.dart';
import 'package:gifty/screens/support.dart';
import 'package:gifty/widgets/itemCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
var pageIndex=0;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

 var List=[
  homebody(),
  SupportPage(),
  FavouritesPage()
];
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
          child: Text("Gifty",style: GoogleFonts.macondoSwashCaps(fontSize: 28),),
        )),
        backgroundColor: Colors.transparent,
        actions: [
          GestureDetector(
            onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CartPage()));},
            child: Icon(LineariconsFree.cart,color: Colors.black,size: 35,)),
          SizedBox(width: 10,),
          Image.asset('assets/images/profilecircle.png')],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 244, 144, 146),
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(30))),
        ),
      ),
      body: List[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 244, 144, 146),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
        child: GNav(
            textStyle: GoogleFonts.robotoMono(fontSize: 14),
            padding: EdgeInsets.all(7),
            tabs: [
              GButton(
                onPressed: (){setState(() {
                  pageIndex=0;
                });},
                icon: Icons.home_outlined,
                text: "Home",
                border: Border.all(),
              ),
              GButton(
                onPressed: (){setState(() {
                  pageIndex=1;
                });},
                  icon: Boxicons.bx_support,
                  text: "Support",
                  border: Border.all()),
              GButton(
                onPressed: (){setState(() {
                  pageIndex=2;
                });},
                  icon: MdiIcons.bookmarkMultipleOutline,
                  text: "Favs",
                  border: Border.all())
            ]),
      ),
    );
  }
}
