import 'package:deep_learning/screens/the_batch_screen.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import '../widgets/app_bar_titles.dart';
import '../widgets/first_part_bar.dart';
import 'courses_screen.dart';
import 'home_page.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  String imageName = 'images/logoooo2.png';
  String titleName = 'The Batch: Weekly AI news ';
  String titleName1 = 'for engineers,executives.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                FirstPartBar(fontSize2: 30,
                  color2: Colors.white,
                  color3: Colors.white,
                  fontSize: 50,
                  color: Colors.orange,
                  color1: Colors.orange,
                  image: imageName,
                  title: titleName,
                  title1: titleName1,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 110,
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
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TheBatchScreen()));
                },
                title: 'The Batch',
                font: 'Fredokat',
              ),
              const SizedBox(
                width: 35,
              ),
              AppBarTitles(
                onPressed: () {},
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
    );
  }
}
