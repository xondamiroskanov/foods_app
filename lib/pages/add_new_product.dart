import 'package:flutter/material.dart';
import 'package:foods_app/widgets/new_food_image.dart';

import '../models/food_model.dart';

class AddNewProduct extends StatefulWidget {
  List<FoodModel> foods;

  AddNewProduct({Key? key, required this.foods}) : super(key: key);

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
  }

  List<String> imageUrls = [];
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
            onPressed: () {},
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
                  imageUrl: imageUrls.length > 0 ? imageUrls[0] : '',
                  newFoodImageController: _mainFoodImageController,
                  label: "Asosiy rasm linkini kiriting"),
              NewFoodImage(
                  imageUrl: imageUrls.length > 1 ? imageUrls[1] : '',
                  newFoodImageController: _firstFoodImageController,
                  label: "Asosiy rasm linkini kiriting"),
              NewFoodImage(
                  imageUrl: imageUrls.length > 2 ? imageUrls[2] : '',
                  newFoodImageController: _secondFoodImageController,
                  label: "Asosiy rasm linkini kiriting"),
              NewFoodImage(
                  imageUrl: imageUrls.length > 3 ? imageUrls[3] : '',
                  newFoodImageController: _thirtFoodImageController,
                  label: "Asosiy rasm linkini kiriting")
            ],
          ),
        ),
      ),
    );
  }
}
