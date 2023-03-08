import 'package:flutter/material.dart';
import 'package:foods_app/pages/enter_food_page.dart';

import '../models/enter_food_model.dart';

class FavoritePage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: favorites.length > 0
          ? ListView.builder(
          itemCount: favorites.length,
          itemBuilder: (BuildContext context, int index) {
              return EnterFoodPage(
                  chooseFavorite: chooseFavorite,
                  e: favorites[index],
                  isFavoriteId: isFavoriteId);
            })
          : Center(
              child: Text(
              "Sevimli ovqatlar",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            )),
    );
  }
}
