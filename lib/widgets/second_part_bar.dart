import 'package:flutter/material.dart';
class SecondPartBar extends StatelessWidget {
  const SecondPartBar({
    Key? key,
  }) : super(key: key);

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
            color: Colors.grey,
            height: 200,
            width: 320,
          ),
        ),
        Positioned(
          left: 80,
          top: 50,
          child: Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green),
            height: 150,
            width: 150,
          ),
        ),
      ],
    );
  }
}