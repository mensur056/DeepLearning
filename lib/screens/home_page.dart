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
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 300,
                  ),
                ), Expanded(
                  child: Container(
                    color: Colors.blue,
                    height: 300,
                  ),
                ), Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
