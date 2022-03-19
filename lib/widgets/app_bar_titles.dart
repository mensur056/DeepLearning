import 'package:deep_learning/screens/courses_screen.dart';
import 'package:deep_learning/screens/the_batch_screen.dart';
import 'package:flutter/material.dart';

class AppBarTitles extends StatelessWidget {
  const AppBarTitles({
    Key? key,
    required this.title,
    required this.font,
  }) : super(key: key);
  final String title;
  final String font;

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
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>title=='The Batch'?const TheBatchScreen():const CoursesScreen()),
        );
      },
      child: Text(
        title,
        style: TextStyle(
            fontSize: 20, fontFamily: font, fontWeight: FontWeight.bold),
      ),
    );
  }
}
