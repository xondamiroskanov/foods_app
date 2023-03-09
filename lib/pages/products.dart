import 'package:flutter/material.dart';
import 'package:foods_app/widgets/drawer_page.dart';

import '../models/enter_food_model.dart';

class ProductsPage extends StatelessWidget {
  List<EnterFoodModel> productsList;

  ProductsPage({Key? key, required this.productsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mahsulotlar"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/addNewProduct");
            },
            icon: Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: productsList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Image.asset(productsList[index].images[0]),
              title: Text(productsList[index].title),
              subtitle: Text("${productsList[index].cost} so'm"),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
              ),
            );
          }),
      drawer: DrawerPage(),
    );
  }
}
