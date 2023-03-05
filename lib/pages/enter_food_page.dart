import 'package:flutter/material.dart';
import 'package:foods_app/models/enter_food_model.dart';
class EnterFoodPage extends StatelessWidget {
  final EnterFoodModel e;
  const EnterFoodPage({Key? key, required this.e}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("ishladi ${e.image}");
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: Image.asset(
                  e.image,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black45.withOpacity(0.4),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24))),
                    height: 40,
                    width: 200,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "",
                        style: TextStyle(
                            fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    size: 28,
                    color: Colors.black45,
                  ),
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ),
                Text(
                  "20 000 so'm",
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}