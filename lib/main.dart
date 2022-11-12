
import 'package:codigo2_alerta/ui/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alerta App",
      theme: ThemeData(
        textTheme: GoogleFonts.workSansTextTheme(),
      ),
      home: LoginPage(),
    );
  }
}

