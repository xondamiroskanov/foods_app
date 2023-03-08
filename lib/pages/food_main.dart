import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foods_app/models/enter_food_model.dart';

class FoodMainPage extends StatefulWidget {

  @override
  State<FoodMainPage> createState() => _FoodMainPageState();
}

class _FoodMainPageState extends State<FoodMainPage> {
  int activIndex = 0;

  @override
  Widget build(BuildContext context) {
    final horizontal = MediaQuery.of(context).size.width;
    final foodMainData =
        ModalRoute.of(context)!.settings.arguments as EnterFoodModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(foodMainData.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  initialPage: activIndex,
                  height: 300.0,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activIndex = index;
                    });
                  }),
              items: foodMainData.images.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      child: Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.amber),
                    );
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: foodMainData.images.map((e) {
                  final activImageIndex = foodMainData.images.indexOf(e);
                  return Container(
                    margin: EdgeInsets.all(6),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        color: activIndex == activImageIndex
                            ? Colors.black54.withOpacity(0.7)
                            : Colors.grey.shade500,
                        shape: BoxShape.circle),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontal * 0.35),
              child: Text(
                "${foodMainData.cost} so'm",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ta'rifi",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    foodMainData.description,
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                "Ta'rkibi",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 250,
              child: Card(
                child: ListView.separated(
                    padding: EdgeInsets.all(10),
                    itemBuilder: (BuildContext context, int index) {
                      return Text(
                        foodMainData.ingeridients[index],
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                    },
                    itemCount: foodMainData.ingeridients.length),
              ),
            )
          ],
        ),
      ),
    );
  }
}
