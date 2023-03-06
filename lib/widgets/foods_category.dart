import 'package:flutter/material.dart';
import 'package:foods_app/models/food_model.dart';

import '../models/enter_food_model.dart';

class FoodsCategory extends StatelessWidget {
  final FoodModel foodModel;
  final List<EnterFoodModel> enterFoodModel;
  FoodsCategory(this.foodModel,this.enterFoodModel);

  void enterFoodCategory(
    BuildContext context,
  ) {

    Navigator.pushNamed(
      context,
      "/foodCategoryPage",
      arguments: {
        "foodTitle": foodModel.foodTitle,
        "categoryImage": enterFoodModel,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: InkWell(
        onTap: () {
          enterFoodCategory(
            context,
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  foodModel.foodImages,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.black.withOpacity(0.5),
              ),
              Positioned(
                  child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  foodModel.foodTitle,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
