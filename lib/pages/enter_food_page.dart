import 'package:flutter/material.dart';
import 'package:foods_app/models/enter_food_model.dart';
class EnterFoodPage extends StatelessWidget {
  final EnterFoodModel e;
  final Function chooseFavorite;
  final Function isFavoriteId;
  const EnterFoodPage({Key? key,required this.chooseFavorite, required this.e, required this.isFavoriteId}) : super(key: key);
void foodMain(BuildContext context){
  Navigator.pushNamed(context,"/FoodMainCategory",arguments: e);

}
  @override
  Widget build(BuildContext context) {
    print("ishladi ${e.images[0]}");
    return InkWell(
      onTap: (){
        foodMain(context);
      },
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image.asset(
                    e.images[0],
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
                          e.title,
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
                    onPressed: () {
                      chooseFavorite(e.id);
                    },
                    icon:  Icon(isFavoriteId(e.id) ?
                      Icons.favorite_outlined:Icons.favorite_outline,
                      size: 28,
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    e.preparingTitme,
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ),
                  Text(
                    e.cost,
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
