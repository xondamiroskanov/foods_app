class EnterFoodModel {
  final List<String> images;
  final String title;
  final String description;
  final String cost;
  final String id;
  final String preparingTitme;
  final List<String> ingeridients;
  final String categoryId;
  bool isLike;

  EnterFoodModel(
      {required this.images,
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
        images: ["assets/images/bread.jpg","assets/images/agg4.jpeg","assets/images/agg_bread2.jpeg"],
        title: "Tuxum va free",
        description:
            "Tuxum yupqa non ustida \nkokatlar bilan juda chiroyli bezatilgan \nnonushta uchun  to'yimli tami nordon ",
        cost: "25000",
        id: 'm1',
        preparingTitme: "15",
        ingeridients: ["Tuxum", "Bo'lichka", "free"],
        categoryId: 'f1'),
    EnterFoodModel(
        images: ["assets/images/lagman.jpg","assets/images/lagman2.jpg"],
        title: "Lag'mon",
        description:
            "Lag'mon to'yimli taom gosht va tuxum qoshilgan \ntam berish uchun noxat va kokatlar ham bor, ko'rinishi chiroyli",
        cost: "20000",
        id: 'm2',
        preparingTitme: "12",
        ingeridients: ["Lag'mon", "Kokat"],
        categoryId: 'f3'),
    EnterFoodModel(
        images: ["assets/images/bread_agg_p.jpg","assets/images/agg_bread4.jpeg","assets/images/bread3.webp"],
        title: "Tuxum",
        description:
            "Tuxum bo'lichka  \nko'katlar pomidor bilan shiroyli beztilgan asosan nonushta uchun",
        cost: "15000",
        id: 'm4',
        preparingTitme: "16",
        ingeridients: ["Non", "Tuxum", "pomidor"],
        categoryId: 'f1'),
    EnterFoodModel(
        images: ["assets/images/milk.jpg","assets/images/milk.jpg","assets/images/milk.jpg"],
        title: "Qaymoq",
        description:
            "Qaymoq sut rang va ta'm berish uchun biroz kream qo'shilgan \nyana ko'rinish uchun ko'kat ham, desert uchun",
        cost: "12000",
        id: 'm5',
        preparingTitme: "5",
        ingeridients: ["Sut", "Kream", "Kokat", "Qaymoq"],
        categoryId: 'f2'),
    EnterFoodModel(
        images: ["assets/images/somsa.jpg","assets/images/somsa.jpg","assets/images/somsa.jpg"],
        title: "Somsa",
        description:
            "Somsa, yoniga sous va qatiq va yana ko'katlar \nsomsasi 5 dona to'yimli bazmlar uchun mos",
        cost: "23000",
        id: 'm6',
        preparingTitme: "10",
        ingeridients: ["Go'sht", "Piyoz", "Xamir", "Quyruq"],
        categoryId: 'f2'),
  ];

  List<EnterFoodModel> get enterFoodModel {
    return _enterfoodModel;
  }
}
