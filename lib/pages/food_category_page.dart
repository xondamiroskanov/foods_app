import 'package:flutter/material.dart';
import 'package:foods_app/pages/enter_food_page.dart';
class FoodCategoryPage extends StatelessWidget {

  int count = 0;
  @override
  Widget build(BuildContext context) {
    final categoryData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
final title = categoryData['foodTitle'];
final meals = categoryData["categoryImage"] as List;
    return Scaffold(
      appBar: AppBar(
        title: Text("${title} turlari"),
      ),
      body: ListView.builder(
          itemCount:meals.length,
          padding: EdgeInsets.all(16),
          itemBuilder: (BuildContext context, int index) {
            return EnterFoodPage(e: meals[index]);
          }),
    );
  }
}
