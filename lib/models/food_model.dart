class FoodModel {
 final  String foodTitle;
 final String foodImages;
 final String id;
  FoodModel({required this.foodTitle, required this.foodImages,required this.id});

}

class FoodInformation {
  List<FoodModel> _foodList = [
    FoodModel(foodTitle: "Tuxumli non", foodImages: "assets/images/bread.jpg", id: 'f1'),
    FoodModel(
        foodTitle: "Muz qaymoq", foodImages: "assets/images/ice_cream.jpg", id: 'f2'),
    FoodModel(foodTitle: "Lag'mon", foodImages: "assets/images/lagman.jpg", id: 'f3'),
    FoodModel(foodTitle: "Pitsa", foodImages: "assets/images/pizza.jpg", id: 'f4'),
    FoodModel(foodTitle: "Pishiriq", foodImages: "assets/images/backing.jpg", id: 'f5'),
    FoodModel(foodTitle: "Somsa", foodImages: "assets/images/somsa.jpg", id: 'f6'),
  ];

  List<FoodModel> get  foodList {
  return _foodList;
  }
}
