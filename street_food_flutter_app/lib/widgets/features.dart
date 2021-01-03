import 'package:flutter/material.dart';
import 'package:street_food_flutter_app/modules/constants.dart';
import 'package:street_food_flutter_app/modules/products.dart';
import 'CustomText.dart';

List<Product> featuredProducts = [
  Product(
      name: "Menu Kebab",
      image: "assets/wrap.png",
      prices: 4.20,
      rating: 4.4,
      vendor: "Bar da AE",
      whishList: true),
  Product(
      name: "Grelhados",
      image: "assets/salmon.png",
      prices: 12.95,
      rating: 4.2,
      vendor: "Cinderela",
      whishList: false)
];

class Featured extends StatefulWidget {
  const Featured({Key key}) : super(key: key);

  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 0, 8, 5),
      child: Container(
        height: 270,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: featuredProducts.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: 290,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: grey[300],
                        offset: Offset(1, 1),
                        blurRadius: 4,
                      )
                    ]),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      featuredProducts[index].image,
                      height: 135,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text:
                                      '${featuredProducts[index].name} do ${featuredProducts[index].vendor}',
                                  fontWeight: FontWeight.w500,
                                  color: grey[800],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: grey[300],
                                          offset: Offset(1, 1),
                                          blurRadius: 3,
                                        )
                                      ]),
                                  child: IconButton(
                                    onPressed: () {
                                      print('cliquei!');
                                    },
                                    icon: featuredProducts[index].whishList
                                        ? Icon(
                                            Icons.favorite,
                                            size: 30,
                                            color: red,
                                          )
                                        : Icon(
                                            Icons.favorite_border,
                                            size: 30,
                                            color: orange,
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: <Widget>[
                                  CustomText(
                                    text: '${featuredProducts[index].rating}',
                                    size: 14,
                                    color: grey[700],
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.star,
                                    color: orange,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: orange,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: orange,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: orange,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: orange,
                                    size: 18,
                                  ),
                                ],
                              ),
                              CustomText(
                                text: "${featuredProducts[index].prices}€",
                                color: grey[800],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
