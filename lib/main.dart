import 'package:flutter/material.dart';
import 'package:foods_app/pages/food_category_page.dart';
import 'package:foods_app/pages/foods_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        primarySwatch: Colors.green
      ),
      debugShowCheckedModeBanner: false,
      home: FoodsPage(),
      routes: {
        "/foodCategoryPage":(context)=>FoodCategoryPage()
      },
    );
  }
}

