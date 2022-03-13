import 'package:flutter/material.dart';

class SecondPartBar extends StatelessWidget {
  const SecondPartBar({
    Key? key, required this.iconName,
  }) : super(key: key);
final String iconName;
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
