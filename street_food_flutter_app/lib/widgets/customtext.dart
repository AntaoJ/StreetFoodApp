import 'package:flutter/material.dart';
import 'package:street_food_flutter_app/modules/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight fontWeight;

  CustomText({@required this.text, this.color, this.size, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? black,
          fontSize: size ?? 16,
          fontWeight: fontWeight ?? FontWeight.normal),
    );
  }
}
