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
              const AppBarTitles(title: 'Courses'),
              const SizedBox(
                width: 35,
              ),
              const AppBarTitles(title: 'The Batch'),
              const SizedBox(
                width: 35,
              ),
              const AppBarTitles(title: 'Blog'),
              const SizedBox(
                width: 35,
              ),
              const AppBarTitles(title: 'Events'),
              const SizedBox(
                width: 35,
              ),
              const AppBarTitles(title: 'Company'),
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
                      child:
                          Container(color: Colors.red, height: firstBarHeight),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        height: firstBarHeight,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
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

