import 'package:deep_learning/constants.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

import '../widgets/app_bar_titles.dart';

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
                          color: Colors.black, height: secondBarHeight),
                    ),
                    Container(
                      color: Colors.white,
                      height: secondBarHeight,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 250,
                                width: 300,
                                color: Colors.red,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green),
                                height: 160,
                                width: 160,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 250,
                                width: 300,
                                color: Colors.red,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green),
                                height: 160,
                                width: 160,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 250,
                                width: 300,
                                color: Colors.red,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green),
                                height: 160,
                                width: 160,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.black,
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
                    Expanded(
                      child: Container(
                        color: const Color(0xFFf0f6f9),
                        height: thirdBarHeight,
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
