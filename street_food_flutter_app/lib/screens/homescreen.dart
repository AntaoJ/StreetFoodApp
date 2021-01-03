import 'package:flutter/material.dart';
import 'package:street_food_flutter_app/modules/constants.dart';
import 'package:street_food_flutter_app/widgets/CustomText.dart';
import 'package:street_food_flutter_app/widgets/categories.dart';
import 'package:street_food_flutter_app/widgets/features.dart';
import 'package:street_food_flutter_app/widgets/populars.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey[50],
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 10.0),
                  child: CustomText(
                    text: 'What would you like to try?',
                    size: 18,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.notifications_none), onPressed: () {}),
                    Positioned(
                        top: 12,
                        right: 12,
                        child: Container(
                          height: 11,
                          width: 11,
                          decoration: BoxDecoration(
                              color: red,
                              borderRadius: BorderRadius.circular(20)),
                        ))
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                      color: grey[300], offset: Offset(1, 2), blurRadius: 4)
                ]),
                child: ListTile(
                  leading: Icon(Icons.search, color: orange),
                  trailing: Icon(
                    Icons.filter_list,
                    color: orange,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'Find Out Street Food Restaurants',
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
            Categories(),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 0.0, 10.0, 8.0),
              child: CustomText(
                text: 'Featured',
                size: 20,
                color: grey[700],
                fontWeight: FontWeight.bold,
              ),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 0.0, 10.0, 8.0),
              child: CustomText(
                text: 'Popular',
                size: 20,
                color: grey[700],
                fontWeight: FontWeight.bold,
              ),
            ),
            Popular(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: white,
        elevation: 2.0,
        onPressed: () {},
        child: Icon(Icons.shopping_bag_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              color: grey[900],
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              color: grey[900],
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
