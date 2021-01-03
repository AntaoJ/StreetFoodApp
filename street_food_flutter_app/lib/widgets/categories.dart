import 'package:flutter/material.dart';
import 'package:street_food_flutter_app/modules/category.dart';
import 'package:street_food_flutter_app/modules/constants.dart';
import 'CustomText.dart';

List<Category> categoriesList = [
  Category(name: 'Delivery', img: "assets/street-food.png"),
  Category(name: 'Fast Food', img: "assets/burger.png"),
  Category(name: 'Pasta', img: "assets/spaguetti.png"),
  Category(name: 'Drinks', img: "assets/wine.png"),
  Category(name: 'Veggie', img: "assets/healthy-food.png"),
  Category(name: 'Grilled', img: "assets/brochettes.png"),
];

class Categories extends StatelessWidget {
  const Categories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 10.0, 10.0, 0.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: orange[100],
                            offset: Offset(1, 2),
                            blurRadius: 4)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Image.asset(
                      categoriesList[index].img,
                      width: 60,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                CustomText(
                  text: categoriesList[index].name,
                  color: grey,
                  size: 14,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
