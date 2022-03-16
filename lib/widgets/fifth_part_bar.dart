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
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/deepLearningLogo.png'),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              AppBarTitles(title: 'Courses', font: 'Fredokat'),
              SizedBox(
                width: 35,
              ),
              AppBarTitles(
                title: 'The Batch',
                font: 'Fredokat',
              ),
              SizedBox(
                width: 35,
              ),
              AppBarTitles(
                title: 'Blog',
                font: 'Fredokat',
              ),
              SizedBox(
                width: 35,
              ),
              AppBarTitles(
                title: 'Events',
                font: 'Fredokat',
              ),
              SizedBox(
                width: 35,
              ),
              AppBarTitles(
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
