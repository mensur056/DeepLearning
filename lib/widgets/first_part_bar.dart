import 'package:flutter/material.dart';

import '../constants.dart';
class FirstPartBar extends StatelessWidget {
  const FirstPartBar({
    Key? key, required this.color, required this.color1, required this.image,
  }) : super(key: key);
final Color color;
final Color color1;
final String image;
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
                  children: const [
                    SizedBox(
                      height: 150,
                    ),
                    Text(
                      'Build your AI career',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          fontFamily: 'Poppins'),
                    ),
                    Text(
                      'with DeepLearning.AI',
                      style: TextStyle(
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
