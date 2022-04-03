import 'package:flutter/material.dart';

import '../constants.dart';

class FirstPartBar extends StatelessWidget {
  const FirstPartBar({
    Key? key,
    required this.color,
    required this.color1,
    required this.image,
    required this.title,
    required this.title1,
    required this.fontSize,
    required this.color2,
    required this.color3,
    required this.fontSize2, required this.barHeight,
  }) : super(key: key);
  final Color color;
  final Color color1;
  final String image;
  final String title;
  final String title1;
  final double fontSize;
  final Color color2;
  final Color color3;
  final double fontSize2;
final double barHeight;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: color,
            height: barHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: color1,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 150,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                          color: color2,
                          fontWeight: FontWeight.bold,
                          fontSize: fontSize,
                          fontFamily: 'Poppins'),
                    ),
                    Text(
                      title1,
                      style: TextStyle(color: color3, fontSize: fontSize2),
                    )
                  ],
                ),
                Expanded(
                  flex: 5,
                  child: Image.asset(
                    image,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
