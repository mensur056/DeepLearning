import 'package:flutter/material.dart';

import '../constants.dart';
class FirstPartBar extends StatelessWidget {
  const FirstPartBar({
    Key? key, required this.color, required this.color1, required this.image, required this.title, required this.title1, required this.fontSize,
  }) : super(key: key);
final Color color;
final Color color1;
final String image;
final String title;
final String title1;
final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color:color,
            height: firstBarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: color1,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const SizedBox(
                      height: 150,
                    ),
                    Text(
                      title,
                      style:  TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: fontSize,
                          fontFamily: 'Poppins'),
                    ),
                     Text(
                     title1,
                      style: const TextStyle(
                          color: Colors.white, fontSize: 30),
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
