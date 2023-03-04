import 'package:flutter/material.dart';

class FoodCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryData = ModalRoute.of(context)!.settings.arguments as String;
    print(categoryData);
    return Scaffold(
      appBar: AppBar(
        title: Text("${categoryData} turlari"),
      ),
      body: ListView.builder(
          itemCount: 4,
          padding: EdgeInsets.all(16),
          itemBuilder: (BuildContext context, int index) {
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
                            'assets/images/kfc.jpg',
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
                                "${categoryData}",
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
                          "10 daqiqa",
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
          }),
    );
  }
}
