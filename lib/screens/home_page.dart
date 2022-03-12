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
          Expanded(child: Container()),
          Row(
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
          Expanded(child: Container()),
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
                      flex: 1,
                      child:
                          Container(      color: Colors.greenAccent, height: firstBarHeight),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        color: Colors.greenAccent,
                        height: firstBarHeight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Build your AI career',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 60,
                                      fontFamily: 'Rowdies'),
                                ),
                                Text(
                                  'with DeepLearning.AI',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 45),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.greenAccent,
                        height: firstBarHeight,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          color: Colors.white, height: secondBarHeight),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        height: secondBarHeight,
                      ),
                    ),
                    Expanded(
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
