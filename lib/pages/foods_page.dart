import 'package:flutter/material.dart';
import 'package:foods_app/models/food_model.dart';
import 'package:foods_app/widgets/foods_category.dart';

class FoodsPage extends StatelessWidget {

  FoodInformation foodInformation = FoodInformation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: const Text(
          "Menu",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 3.5,
        ),
        itemBuilder: (BuildContext context, int index) {
          return FoodsCategory(foodInformation.foodList[index]);
        },
      ),
    );
  }
}
