import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  Widget listTile(String text, IconData icon, Function() onTap) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon),
      title: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            title: Text("MENU"),
          ),
          listTile('Asosiy sahifa', Icons.home, () {
            Navigator.pushReplacementNamed(context, "/");
          }),
          listTile('Mahsulotlar', Icons.category, () {
            Navigator.pushReplacementNamed(context, "/products");
          })

        ],
      ),
    );
  }
}
