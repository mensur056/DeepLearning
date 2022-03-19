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
        toolbarHeight: 100,
        actions: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Image.asset(
                    'images/deepLearningLogo.png',
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                ),
                const SizedBox(
                  width: 35,
                ),
                const AppBarTitles(title: 'Courses', font: 'Fredokat'),
                const SizedBox(
                  width: 35,
                ),
                const AppBarTitles(
                  title: 'The Batch',
                  font: 'Fredokat',
                ),
                const SizedBox(
                  width: 35,
                ),
                const AppBarTitles(
                  title: 'Blog',
                  font: 'Fredokat',
                ),
                const SizedBox(
                  width: 35,
                ),
                const AppBarTitles(
                  title: 'Events',
                  font: 'Fredokat',
                ),
                const SizedBox(
                  width: 35,
                ),
                const AppBarTitles(
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
                  color: Colors.lightBlueAccent,
                  color1: Colors.lightBlueAccent,
                  image: 'images/logoooo2.png',title: 'The Batch: Weekly AI news for engineers, ',title1: 'executives, and enthusiasts.',
                )
              ],
            )
          ],
        ),
      ),
    );;
  }
}
