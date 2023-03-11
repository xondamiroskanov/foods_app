import 'package:flutter/material.dart';
import 'package:foods_app/widgets/drawer_page.dart';
import '../models/enter_food_model.dart';

class ProductsPage extends StatefulWidget {
  List<EnterFoodModel> productsList;
  final Function deleteMeal;

  ProductsPage({Key? key, required this.productsList, required this.deleteMeal})
      : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  void addNewProduct(BuildContext context) {
    Navigator.pushNamed(context, "/addNewProduct").then((value) {
      if (value == true) {
        return setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mahsulotlar"),
        actions: [
          IconButton(
            onPressed: () {
              addNewProduct(context);
            },
            icon: Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: widget.productsList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading:
                  widget.productsList[index].images[0].startsWith("assets/")
                      ? Image.asset(widget.productsList[index].images[0])
                      : Image.network(widget.productsList[index].images[0]),
              title: Text(widget.productsList[index].title),
              subtitle: Text("${widget.productsList[index].cost} so'm"),
              trailing: IconButton(
                onPressed: () {
                  widget.deleteMeal(widget.productsList[index].id);
                },
                icon: Icon(Icons.delete),
              ),
            );
          }),
      drawer: DrawerPage(),
    );
  }
}
