
class EnterFoodModel {
  final String image;
  final String title;
  final String description;
  final String cost;
  final String id;
  final String preparingTitme;
  final List<String> ingeridients;
  final String categoryId;
  bool isLike;

  EnterFoodModel(
      {required this.image,
      required this.title,
      required this.description,
      required this.cost,
      required this.id,
      required this.preparingTitme,
      required this.ingeridients,
      required this.categoryId,
      this.isLike = false});
}

class EnterFoodCategory {
  List<EnterFoodModel> _enterfoodModel = [

    EnterFoodModel(
        image: "assets/images/bread.jpg",
        title: "Tuxum va free",
        description: "Nonushta uchun",
        cost: "20000",
        id: 'm1',
        preparingTitme: "15",
        ingeridients: ["Tuxum", "Bo'lichka", "free"],
        categoryId: 'f1'),
    EnterFoodModel(
        image: "assets/images/lagman.jpg",
        title: "Lag'mon",
        description: "Nonushta uchun",
        cost: "20000",
        id: 'm2',
        preparingTitme: "12",
        ingeridients: ["Lag'mon", "Kokat"],
        categoryId: 'f3'),
    EnterFoodModel(
        image: "assets/images/lagman2.jpg",
        title: "Lag'mon 2",
        description: "Nonushta uchun",
        cost: "20000",
        id: 'm3',
        preparingTitme: "14",
        ingeridients: ["Lag'mon", "Kokat","Sous"],
        categoryId: 'f3'),
    EnterFoodModel(
        image: "assets/images/bread_agg_p.jpg",
        title: "Tuxum",
        description: "Nonushta uchun",
        cost: "20000",
        id: 'm4',
        preparingTitme: "16",
        ingeridients: ["Non", "Tuxum", "pomidor"],
        categoryId: 'f1'),
    EnterFoodModel(
        image: "assets/images/milk.jpg",
        title: "Nonushta",
        description: "Nonushta uchun",
        cost: "20000",
        id: 'm5',
        preparingTitme: "5",
        ingeridients: ["Sut", "Kream", "Kokat", "Qaymoq"],
        categoryId: 'f2'),
    EnterFoodModel(
        image: "assets/images/somsa.jpg",
        title: "Somsa",
        description: "Nonushta uchun",
        cost: "20000",
        id: 'm6',
        preparingTitme: "10",
        ingeridients: ["Go'sht", "Piyoz", "Xamir", "Quyruq"],
        categoryId: 'f2'),

  ];
  List<EnterFoodModel> get enterFoodModel {
    return _enterfoodModel;
}
}
