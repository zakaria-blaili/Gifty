
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 45,
            width: 125,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 211, 212),
              border: Border.all(),
              borderRadius: BorderRadius.circular(30),
              ),
              child: Center(child: Text(text,style:GoogleFonts.robotoMono(fontSize: 12) ,textAlign: TextAlign.center,)),
          );
  }
}