import 'package:flutter/material.dart';

import '../constants.dart';

class ThirdPartBar extends StatelessWidget {
  const ThirdPartBar({
    Key? key,
    required this.title1,
    required this.title2,
  }) : super(key: key);
  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Color(0xFF32849c),
              ),
              height: 220,
              width: barWidth,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                title1,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.asset('images/musk-modified.png'),
              ),
            )
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Color(0xFF32849c),
              ),
              height: 220,
              width: barWidth,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                title2,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.asset('images/musk-modified.png'),
              ),
            )
          ],
        ),
      ],
    );
  }
}
