import 'package:flutter/material.dart';
import 'package:foods_app/widgets/new_food_image.dart';

import '../models/enter_food_model.dart';
import '../models/food_model.dart';

class AddNewProduct extends StatefulWidget {
  List<FoodModel> foods;
  final Function newMealFunction;

  AddNewProduct({
    Key? key,
    required this.foods,
    required this.newMealFunction,
  }) : super(key: key);

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  TextEditingController _foodNameController = TextEditingController();
  TextEditingController _foodDescriptionController = TextEditingController();
  TextEditingController _foodIngredientController = TextEditingController();
  TextEditingController _foodCostController = TextEditingController();
  TextEditingController _foodPreparedTimeController = TextEditingController();
  TextEditingController _mainFoodImageController = TextEditingController();
  TextEditingController _firstFoodImageController = TextEditingController();
  TextEditingController _secondFoodImageController = TextEditingController();
  TextEditingController _thirtFoodImageController = TextEditingController();

  void submit() {
    if (_foodNameController.text.isEmpty ||
        _foodDescriptionController.text.isEmpty ||
        _foodIngredientController.text.isEmpty ||
        _foodCostController.text.isEmpty ||
        _foodPreparedTimeController.text.isEmpty ||
        _mainFoodImageController.text.isEmpty ||
        _firstFoodImageController.text.isEmpty ||
        _secondFoodImageController.text.isEmpty ||
        _thirtFoodImageController.text.isEmpty) {
      return;
    }
    final List<String> imageUrls = [
      _mainFoodImageController.text,
      _firstFoodImageController.text,
      _secondFoodImageController.text,
      _thirtFoodImageController.text
    ];
    final List<String> ingreds = _foodIngredientController.text.split(',');
    widget.newMealFunction(
      EnterFoodModel(
          images: imageUrls,
          title: _foodNameController.text,
          description: _foodDescriptionController.text,
          cost: _foodCostController.text,
          id: UniqueKey().toString(),
          preparingTitme: _foodPreparedTimeController.text,
          ingeridients: ingreds,
          categoryId: productTitle),
    );
    Navigator.pop(context,true);
  }

  late String productTitle;

  @override
  void initState() {
    super.initState();
    productTitle = widget.foods[0].id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                submit();
              });
            },
            icon: Icon(
              Icons.save,
            ),
          ),
        ],
        title: Text(
          "Yangi ovqatlar ",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(14),
          child: Column(
            children: [
              DropdownButton(
                isExpanded: true,
                value: productTitle,
                items: widget.foods
                    .map(
                      (item) => DropdownMenuItem(
                        child: Text(
                          item.foodTitle,
                        ),
                        value: item.id,
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    productTitle = value as String;
                  });
                },
              ),
              TextField(
                controller: _foodNameController,
                decoration: InputDecoration(hintText: "Ovqat nomi"),
              ),
              TextField(
                controller: _foodDescriptionController,
                decoration: InputDecoration(hintText: "Ta'rifi"),
                maxLines: 5,
              ),
              TextField(
                controller: _foodIngredientController,
                decoration: InputDecoration(
                  hintText: "Ovqat tarkibi",
                ),
              ),
              TextField(
                controller: _foodCostController,
                decoration: InputDecoration(
                  hintText: "Narxi",
                ),
              ),
              TextField(
                controller: _foodPreparedTimeController,
                decoration: InputDecoration(hintText: "Tayyor bo'lish vaqti"),
              ),
              NewFoodImage(
                  newFoodImageController: _mainFoodImageController,
                  label: "Asosiy rasm linkini kiriting"),
              NewFoodImage(
                  newFoodImageController: _firstFoodImageController,
                  label: "Asosiy rasm linkini kiriting"),
              NewFoodImage(
                  newFoodImageController: _secondFoodImageController,
                  label: "Asosiy rasm linkini kiriting"),
              NewFoodImage(
                  newFoodImageController: _thirtFoodImageController,
                  label: "Asosiy rasm linkini kiriting")
            ],
          ),
        ),
      ),
    );
  }
}
