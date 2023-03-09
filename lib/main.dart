import 'package:flutter/material.dart';
import 'package:foods_app/models/food_model.dart';
import 'package:foods_app/pages/add_new_product.dart';
import 'package:foods_app/pages/food_category_page.dart';
import 'package:foods_app/pages/food_main.dart';
import 'package:foods_app/pages/products.dart';
import 'package:foods_app/widgets/bootom_nav.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/enter_food_model.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _MyAppState();
}

class _MyAppState extends State<App> {
  EnterFoodCategory enterFoodCategory = EnterFoodCategory();
  FoodInformation foodInformation = FoodInformation();

  void chooseFavorite(String id) {
    setState(() {
      enterFoodCategory.isFavorite(id);
    });

  }

  bool isFavoriteId(String foodid) {
    return enterFoodCategory.favorites.any((element) => element.id == foodid);
  }

  @override
  Widget build(BuildContext context) {
    print(enterFoodCategory.favorites);
    return MaterialApp(
      theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      //Home page
      initialRoute: "/",
      routes: {
        "/": (context) => BottomNavWidget(enterFoodCategory,
            foodInformation.foodList, chooseFavorite, isFavoriteId),
        "/foodCategoryPage": (context) =>
            FoodCategoryPage(chooseFavorite, isFavoriteId),
        "/FoodMainCategory": (context) => FoodMainPage(),
        "/products" : (context) => ProductsPage(productsList: enterFoodCategory.enterFoodModel),
        "/addNewProduct":(context)=> AddNewProduct(foods: foodInformation.foodList)
      },
    );
  }
}
