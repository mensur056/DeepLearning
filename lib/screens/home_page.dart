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
                      child: Container(
                          color: Colors.greenAccent, height: firstBarHeight),
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(
                        color: Colors.greenAccent,
                        height: firstBarHeight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(
                                    height: 125,
                                  ),
                                  Text(
                                    'Build your AI career',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 50,
                                        fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    'with DeepLearning.AI',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 35),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80.0),
                              child: Image.asset(
                                'images/logoooo.png',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
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
