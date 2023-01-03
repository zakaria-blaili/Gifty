import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:gifty/screens/logIn.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'screens/myProvider.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        child:EasySplashScreen(
          backgroundColor: Color.fromARGB(255, 244, 144, 146),
          logo:Image.asset('assets/images/splash.png',),
          logoWidth: 150,
          navigator:LogIn(),
          durationInSeconds: 5,
           title: Text("Gifty",style: GoogleFonts.macondoSwashCaps(fontSize: 64),),
       ),
        create: (_) =>MyProvider(),),
    );
  }
} 
