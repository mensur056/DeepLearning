import 'package:deep_learning/screens/home_page.dart';
import 'package:deep_learning/screens/the_batch_screen.dart';
import 'package:flutter/material.dart';

import 'app_bar_titles.dart';

class FifthPartBar extends StatelessWidget {
  const FifthPartBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: const Color(0xFF455b66),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/deepLearningLogo.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBarTitles(
                  title: 'Courses',
                  font: 'Fredokat',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  }),
              const SizedBox(
                width: 35,
              ),
              AppBarTitles(
                title: 'The Batch',
                font: 'Fredokat',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TheBatchScreen()));
                },
              ),
              const SizedBox(
                width: 35,
              ),
              AppBarTitles(
                title: 'Blog',
                font: 'Fredokat',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TheBatchScreen()));
                },
              ),
              const SizedBox(
                width: 35,
              ),
              AppBarTitles(
                title: 'Events',
                font: 'Fredokat',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TheBatchScreen()));
                },
              ),
              const SizedBox(
                width: 35,
              ),
              AppBarTitles(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TheBatchScreen()));
                },
                title: 'Company',
                font: 'Fredokat',
              ),
            ],
          )
        ],
      ),
    );
  }
}
