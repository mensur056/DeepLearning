import 'package:deep_learning/screens/blog_screen.dart';
import 'package:deep_learning/screens/courses_screen.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

import '../widgets/app_bar_titles.dart';
import '../widgets/first_part_bar.dart';
import 'home_page.dart';

class TheBatchScreen extends StatefulWidget {
  const TheBatchScreen({Key? key}) : super(key: key);

  @override
  State<TheBatchScreen> createState() => _TheBatchScreenState();
}

class _TheBatchScreenState extends State<TheBatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 110,
        actions: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Image.asset(
                    'images/the_batch.png',
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                ),
                const SizedBox(
                  width: 35,
                ),
                AppBarTitles(
                  title: 'Courses',
                  font: 'Fredokat',
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CoursesScreen()));
                  },
                ),
                const SizedBox(
                  width: 35,
                ),
                AppBarTitles(
                  onPressed: () {},
                  title: 'The Batch',
                  font: 'Fredokat',
                ),
                const SizedBox(
                  width: 35,
                ),
                AppBarTitles(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BlogScreen()));
                  },
                  title: 'Blog',
                  font: 'Fredokat',
                ),
                const SizedBox(
                  width: 35,
                ),
                AppBarTitles(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TheBatchScreen()));
                  },
                  title: 'Events',
                  font: 'Fredokat',
                ),
                const SizedBox(
                  width: 35,
                ),
                AppBarTitles(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TheBatchScreen()));
                  },
                  title: 'Company',
                  font: 'Fredokat',
                ),
                const SizedBox(
                  width: 35,
                ),
                HoverContainer(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  hoverDecoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  height: 40,
                  width: 140,
                  child: const Center(child: Text('Get Al News')),
                )
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: const [
                FirstPartBar(
                  color2: Colors.white,
                  color3: Colors.white,
                  fontSize: 50,
                  color: Colors.lightBlueAccent,
                  color1: Colors.lightBlueAccent,
                  image: 'images/logoooo2.png',
                  title: 'The Batch: Weekly AI news ',
                  title1: 'for engineers,executives.',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
