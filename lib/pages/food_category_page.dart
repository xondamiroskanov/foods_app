import 'package:flutter/material.dart';
import 'package:foods_app/pages/enter_food_page.dart';

class FoodCategoryPage extends StatelessWidget {

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
      body: meals.length > 0
          ? ListView.builder(
              itemCount: meals.length,
              padding: EdgeInsets.all(16),
              itemBuilder: (BuildContext context, int index) {
                return EnterFoodPage(e: meals[index]);
              })
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Hozircha bu kategoriyaga oid ovqatlar yoq",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  child: Image.asset(
                    "assets/images/no-task.png",
                    fit: BoxFit.cover,
                    width: 220,
                  ),
                )
              ],
            ),
    );
  }
}
