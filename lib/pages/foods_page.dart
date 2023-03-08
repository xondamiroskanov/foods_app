import 'package:flutter/material.dart';
import 'package:foods_app/models/enter_food_model.dart';
import 'package:foods_app/models/food_model.dart';
import 'package:foods_app/widgets/foods_category.dart';


class FoodsPage extends StatelessWidget {
  List<EnterFoodModel> enterfoodM;
  List<FoodModel> foodM;

  FoodsPage(this.enterfoodM, this.foodM);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: foodM.length > 0
            ? GridView.builder(
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
              )
            : const Center(
                child: Text("Kategoriyalar mavjud emas"),
              ),
       );
  }
}
