import 'package:flutter/material.dart';

class AppBarTitles extends StatelessWidget {
  const AppBarTitles({
    Key? key,
    required this.title, required this.font,
  }) : super(key: key);
  final String title;
  final String font;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: null,
      child: Text(
        title,
        style:  TextStyle(
            color: Colors.black, fontSize: 20, fontFamily: font,fontWeight: FontWeight.bold),
      ),
    );
  }
}
