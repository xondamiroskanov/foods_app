import 'package:flutter/material.dart';
import 'package:foods_app/pages/enter_food_page.dart';

import '../models/enter_food_model.dart';

class FavoritePage extends StatefulWidget {
  List<EnterFoodModel> favorites;
  final Function chooseFavorite;
  final Function isFavoriteId;

  FavoritePage(
      {Key? key,
      required this.favorites,
      required this.chooseFavorite,
      required this.isFavoriteId})
      : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  void _chooseFavorite(String foodId) {
    setState(() {
      widget.chooseFavorite(foodId);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Sevimli ovqat o'chmoqda"),
        action: SnackBarAction(
            label: "BEKOQ QILISH",
            onPressed: () {
              setState(() {
                widget.chooseFavorite(foodId);
              });
            }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.favorites.length > 0
          ? ListView.builder(
              itemCount: widget.favorites.length,
              itemBuilder: (BuildContext context, int index) {
                return EnterFoodPage(
                    chooseFavorite: _chooseFavorite,
                    e: widget.favorites[index],
                    isFavoriteId: widget.isFavoriteId);
              })
          : Center(
              child: Text(
                "Sevimli ovqatlar",
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
            ),

    );
  }
}
