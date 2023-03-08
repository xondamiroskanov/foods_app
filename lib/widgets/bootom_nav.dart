import 'package:flutter/material.dart';
import 'package:foods_app/pages/favorite_page.dart';
import 'package:foods_app/pages/foods_page.dart';

import '../models/enter_food_model.dart';
import '../models/food_model.dart';

class BottomNavWidget extends StatefulWidget {
  final EnterFoodCategory enterfoodM;
  List<FoodModel> foodM;
  final Function chooseFavorite;
  final Function isFavoriteId;

  BottomNavWidget(this.enterfoodM, this.foodM,this.chooseFavorite,this.isFavoriteId);

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  List<Widget> _pages = [];
  int _selectIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      FoodsPage(widget.enterfoodM.enterFoodModel, widget.foodM),
      FavoritePage(favorites: widget.enterfoodM.favorites,chooseFavorite: widget.chooseFavorite, isFavoriteId: widget.isFavoriteId,),
    ];
  }

  void onItemTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  String _pagesTitle() {
    if (_selectIndex == 0) {
      return "Menu";
    } else {
      return "Sevimli ovqatlar";
    }
  }

  @override
  Widget build(BuildContext context) {
    print(_selectIndex);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_pagesTitle()),
      ),
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTap,
        currentIndex: _selectIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
              size: 30,
            ),
            label: "Barchasi",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              size: 28,
            ),
            label: "Sevimlilar",
          ),
        ],
      ),
    );
  }
}
