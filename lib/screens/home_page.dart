import 'package:deep_learning/constants.dart';
import 'package:deep_learning/screens/blog_screen.dart';
import 'package:deep_learning/screens/courses_screen.dart';
import 'package:deep_learning/screens/the_batch_screen.dart';
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
  bool value = false;
  String dropdownValue =
      'Please Selected Country                                                                          ';

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
                AppBarTitles(
                  title: 'Courses',
                  font: 'Fredokat',
                  onPressed: () {
                    Navigator.push(
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
                    Navigator.push(
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
                    Navigator.push(
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
                    fontSize: 50,
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
                Container(
                  height: fourthBarHeight,
                  color: const Color(0xFF046a63),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/mail-download.gif',
                          width: 800, height: 600, fit: BoxFit.cover),
                      const Spacer(),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        height: 600,
                        width: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 25.0, top: 15),
                              child: Text(
                                'Stay updated with the latest AI courses, news, \nand events.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  'First name',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                SizedBox(
                                  width: 150,
                                ),
                                Text(
                                  'Last name',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 25,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'ex. John',
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'ex. Smith',
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 25.0, bottom: 5),
                              child: Text(
                                'Email',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 25,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'ex. johnsmith@gmail.com',
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 25.0, bottom: 5),
                              child: Text(
                                'Job Title',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 25,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: 'ex. Software Engineer',
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 25.0, bottom: 5),
                              child: Text(
                                'Country',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 25,
                                ),
                                DropdownButton<String>(
                                  value: dropdownValue,
                                  icon: const Icon(
                                      Icons.keyboard_arrow_down_sharp),
                                  elevation: 16,
                                  style: const TextStyle(color: Colors.black),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.deepPurpleAccent,
                                  ),
                                  onChanged: (String? newValue) {
                                    setState(
                                      () {
                                        dropdownValue = newValue!;
                                      },
                                    );
                                  },
                                  items: <String>[
                                    'Please Selected Country                                                                          ',
                                    'Azerbaijan',
                                    'America',
                                    'Africa'
                                  ].map<DropdownMenuItem<String>>(
                                    (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    },
                                  ).toList(),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: <Widget>[
                                const SizedBox(
                                  width: 25,
                                ),
                                Checkbox(
                                  value: this.value,
                                  onChanged: (value) {
                                    setState(() {
                                      this.value = value!;
                                    });
                                  },
                                ), //Checkbox
                                const Text(
                                  'I want to get the latest news, courses, and events',
                                  style: TextStyle(fontSize: 17.0),
                                ), //Text
                                const SizedBox(width: 10), //SizedBox
                                /** Checkbox Widget **/
                              ], //<Widget>[]
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 160.0, top: 15),
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.red,
                                ),
                                height: 60,
                                width: 180,
                                child: const Center(
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: const Color(0xFF046a63),
                        ),
                      )
                    ],
                  ),
                ),
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
