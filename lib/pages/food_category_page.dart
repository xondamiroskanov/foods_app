import 'package:flutter/material.dart';

class FoodCategoryPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final categoryData = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("${categoryData} turlari"),
      ),
    );
  }
}
