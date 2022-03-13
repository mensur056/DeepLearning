import 'package:flutter/material.dart';

import '../constants.dart';

class ThirdPartBar extends StatelessWidget {
  const ThirdPartBar({
    Key? key,
  }) : super(key: key);

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
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,),
              child: Image.asset('images/musk.webp'),
            )
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: Color(0xFF32849c),
          ),
          height: 220,
          width: barWidth,
        ),
      ],
    );
  }
}
