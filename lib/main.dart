import 'package:deep_learning/screens/courses_screen.dart';
import 'package:deep_learning/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeepLearning',
      home: CoursesScreen(),
    );
  }
}
