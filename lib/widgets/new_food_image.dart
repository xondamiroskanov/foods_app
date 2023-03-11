import 'package:flutter/material.dart';

class NewFoodImage extends StatefulWidget {
  final TextEditingController newFoodImageController;
  final String label;

  NewFoodImage(
      {Key? key,
      required this.newFoodImageController,
      required this.label})
      : super(key: key);

  @override
  State<NewFoodImage> createState() => _NewFoodImageState();
}

class _NewFoodImageState extends State<NewFoodImage> {
  var image;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            height: height * 0.17,
            width: width * 0.32,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: image != null && image.isNotEmpty
                ? Image.network(image,fit: BoxFit.cover,)
                : Center(
                    child: Text(
                      "Rasm kiriting",
                    ),
                  ),

          ),
          Expanded(
            child: TextField(
              controller: widget.newFoodImageController,
              decoration: InputDecoration(
                hintText: widget.label,
              ),
              onSubmitted: (value) {
                setState(() {
                  image = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
