import 'package:flutter/material.dart';
import 'package:foods_app/models/enter_food_model.dart';
import 'package:foods_app/models/food_model.dart';
import 'package:foods_app/widgets/foods_category.dart';
import 'package:foods_app/widgets/bootom_nav.dart';

class FoodsPage extends StatelessWidget {
  List<EnterFoodModel> enterfoodM;
  List<FoodModel> foodM;

  FoodsPage(this.enterfoodM, this.foodM);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 8,
        title: const Text(
          "Menu",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: GridView.builder(
        itemCount: foodM.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 3.5,
        ),
        itemBuilder: (BuildContext context, int index) {
          final categoryFood = enterfoodM
              .where((meal) => meal.categoryId == foodM[index].id)
              .toList();
          return FoodsCategory(foodM[index], categoryFood);
        },
      ),
      bottomNavigationBar: BottomNavWidget()
    );
  }
}
