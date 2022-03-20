import 'package:deep_learning/screens/blog_screen.dart';
import 'package:deep_learning/screens/home_page.dart';
import 'package:deep_learning/screens/the_batch_screen.dart';
import 'package:deep_learning/widgets/app_bar_titles.dart';
import 'package:deep_learning/widgets/first_part_bar.dart';
import 'package:deep_learning/widgets/third_part_bar.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
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
                    Navigator.push(
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
                  onPressed: () {},
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
                  title: 'The Batch',
                  font: 'Fredokat',
                ),
                const SizedBox(
                  width: 35,
                ),
                AppBarTitles(
                  onPressed: () {
                    Navigator.push(
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const TheBatchScreen()));
                  },
                  title: 'Events',
                  font: 'Fredokat',
                ),
                const SizedBox(
                  width: 35,
                ),
                AppBarTitles(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const TheBatchScreen()));
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  hoverDecoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
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
              children: [
                const FirstPartBar(
                  fontSize: 50,
                  color: Colors.redAccent,
                  color1: Colors.redAccent,
                  image: 'images/logoooo1.png',
                  title: 'Gain the knowledge and ',
                  title1: 'skills for an AI career',
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0, bottom: 20),
                  child: Text(
                    'Our Courses',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontFamily: 'Poppins'),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                      flex: 2,
                    ),
                    const ThirdPartBar(
                        title1: 'ALL Of Everyone',
                        title2: 'DeepLearning Specialization'),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                      flex: 2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                      flex: 2,
                    ),
                    const ThirdPartBar(
                        title1: 'ALL Of Everyone',
                        title2: 'DeepLearning Specialization'),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                      flex: 2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                      flex: 2,
                    ),
                    const ThirdPartBar(
                        title1: 'ALL Of Everyone',
                        title2: 'DeepLearning Specialization'),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                      flex: 2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                      flex: 2,
                    ),
                    const ThirdPartBar(
                        title1: 'ALL Of Everyone',
                        title2: 'DeepLearning Specialization'),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                      flex: 2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                      flex: 2,
                    ),
                    const ThirdPartBar(
                        title1: 'ALL Of Everyone',
                        title2: 'DeepLearning Specialization'),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                      ),
                      flex: 2,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
