import 'package:deep_learning/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
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
                        color: Colors.blue,
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
                          color: Colors.greenAccent, height: secondBarHeight),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                        height: secondBarHeight,
                      ),
                    ),
                    Expanded(
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
                      child:
                          Container(color: Colors.grey, height: thirdBarHeight),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        height: thirdBarHeight,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        height: thirdBarHeight,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          color: Colors.orangeAccent, height: fourthBarHeight),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.orangeAccent,
                        height: fourthBarHeight,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.orangeAccent,
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
