
import 'package:flutter/material.dart';

class AppBarTitles extends StatelessWidget {
  const AppBarTitles({
    Key? key,
    required this.title,
    required this.font,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final String font;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.red;
          }

          return Colors.black;
        }),
      ),
      onPressed:onPressed,
      child: Text(
        title,
        style: TextStyle(
            fontSize: 20, fontFamily: font, fontWeight: FontWeight.bold),
      ),
    );
  }
}
