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
        Container(
          color: Colors.green,
          height: 220,
          width: barWidth,
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          color: Colors.green,
          height: 220,
          width: barWidth,
        ),
      ],
    );
  }
}
