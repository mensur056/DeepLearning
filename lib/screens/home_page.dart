import 'package:deep_learning/constants.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

import '../widgets/app_bar_titles.dart';
import '../widgets/second_part_bar.dart';
import '../widgets/thir_part_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                Image.asset('images/deepLearningLogo.png'),
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
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.greenAccent,
                        height: firstBarHeight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.greenAccent,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(
                                  height: 150,
                                ),
                                Text(
                                  'Build your AI career',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 60,
                                      fontFamily: 'Poppins'),
                                ),
                                Text(
                                  'with DeepLearning.AI',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                )
                              ],
                            ),
                            Expanded(
                              flex: 5,
                              child: Image.asset(
                                'images/logoooo.png',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
                      color: Color(0xFFf0f6f9),
                      width: 1050,
                      height: 670,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const ThirdPartBar(),
                              const SizedBox(
                                height: 30,
                              ),
                              const ThirdPartBar(),
                              const SizedBox(
                                height: 50,
                              ),
                              Container(
                                color: Colors.blue,
                                height: 60,
                                width: 300,
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
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          color: Colors.white, height: fourthBarHeight),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        height: fourthBarHeight,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        height: fourthBarHeight,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

