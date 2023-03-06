import 'package:flutter/material.dart';

class BottomNavWidget extends StatefulWidget {
  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int _selectIndex = 0;

  void onItemTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_selectIndex);
    return BottomNavigationBar(
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
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline,
            size: 28,
          ),
          label: "Boshqa",
        ),
      ],
    );
  }
}
