import 'package:flutter/material.dart';
import 'package:foods_app/models/food_model.dart';
import 'package:foods_app/pages/food_category_page.dart';
import 'package:foods_app/pages/food_main.dart';
import 'package:foods_app/pages/foods_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/enter_food_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  EnterFoodCategory enterFoodCategory = EnterFoodCategory();
  FoodInformation foodInformation = FoodInformation();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      //Home page
      initialRoute: "/",
      routes: {
        "/": (context) => FoodsPage(
            enterFoodCategory.enterFoodModel, foodInformation.foodList),
        "/foodCategoryPage": (context) => FoodCategoryPage(),
        "/FoodMainCategory": (context) => FoodMainPage()
      },
    );
  }
}
