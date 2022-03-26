import 'package:deep_learning/constants.dart';
import 'package:deep_learning/screens/blog_screen.dart';
import 'package:deep_learning/screens/courses_screen.dart';
import 'package:deep_learning/screens/the_batch_screen.dart';
import 'package:deep_learning/widgets/mail_and_register_part.dart';
import 'package:deep_learning/widgets/on_hover_button.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

import '../widgets/app_bar_titles.dart';
import '../widgets/fifth_part_bar.dart';
import '../widgets/first_part_bar.dart';
import '../widgets/fourth_part_bar.dart';
import '../widgets/second_part_bar.dart';
import '../widgets/third_part_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                Image.asset('images/deepLearningLogo.png'),
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
              children: [
                const FirstPartBar(
                    fontSize: 60,
                    color: Colors.lightGreen,
                    color1: Colors.lightGreen,
                    image: 'images/logoooo.png',
                    title: 'Build your AI career',
                    title1: 'with DeepLearning.AI'),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                          color: Colors.white, height: secondBarHeight),
                    ),
                    Container(
                      color: Colors.white,
                      height: secondBarHeight,
                      child: Row(
                        children: const [
                          SecondPartBar(
                            iconName: 'mezun.png',
                            barInfo1: 'Gain world-class education to',
                            barInfo2: 'expand your technical knowledge',
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          SecondPartBar(
                            iconName: 'settings.png',
                            barInfo1: 'Get hands-on training to acquire',
                            barInfo2: 'practical skills',
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          SecondPartBar(
                            iconName: 'people.png',
                            barInfo1: 'Learn from a collaborative ',
                            barInfo2: 'community of peers',
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                        height: secondBarHeight,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          color: const Color(0xFFf0f6f9),
                          height: thirdBarHeight),
                    ),
                    Container(
                      color: const Color(0xFFf0f6f9),
                      width: 1050,
                      height: 670,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const ThirdPartBar(
                                  title1: 'Al For Everyone',
                                  title2: 'Deep Learning\nSpecialization'),
                              const SizedBox(
                                height: 30,
                              ),
                              const ThirdPartBar(
                                title1:
                                    'Practical Data Science\n(PDS) Specialization',
                                title2:
                                    'Machine Learning\nEngineering for\nProduction (MLOps)\nSpecialization',
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              OnHoverButton(
                                child: HoverContainer(
                                  hoverDecoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: const Center(
                                    child: Text(
                                      'See All Programs',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                  decoration: const BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  height: 60,
                                  width: 300,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: const Color(0xFFf0f6f9),
                        height: thirdBarHeight,
                      ),
                    ),
                  ],
                ),
                const MailAndRegisterPart(),
                const FourthPartBar(),
                const FifthPartBar()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
