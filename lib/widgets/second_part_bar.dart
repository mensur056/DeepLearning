import 'package:flutter/material.dart';

class SecondPartBar extends StatelessWidget {
  const SecondPartBar({
    Key? key,
    required this.iconName, required this.barInfo1, required this.barInfo2,
  }) : super(key: key);
  final String iconName;
  final String barInfo1;
  final String barInfo2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: 320,
          color: Colors.white,
        ),
        Positioned(
          top: 125,
          bottom: 50,
          child: Container(
            child: Column(
              children:  [
                const SizedBox(
                  height: 100,
                ),
                Text(
                 barInfo1,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(barInfo2)
              ],
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFf0f6f9),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            height: 200,
            width: 320,
          ),
        ),
        Positioned(
          left: 80,
          top: 50,
          child: Container(
            child: Image.asset("images/$iconName"),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFFbee6ea)),
            height: 150,
            width: 150,
          ),
        ),
      ],
    );
  }
}
