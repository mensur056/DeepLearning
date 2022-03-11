import 'package:flutter/material.dart';
class AppBarTitles extends StatelessWidget {
  const AppBarTitles({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: null,
      child: Text(
        title,
        style: const TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }
}
