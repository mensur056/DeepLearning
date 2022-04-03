import 'package:deep_learning/screens/blog_screen.dart';
import 'package:deep_learning/screens/courses_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hovering/hovering.dart';

import '../widgets/app_bar_titles.dart';
import '../widgets/first_part_bar.dart';
import 'home_page.dart';

class TheBatchScreen extends StatefulWidget {
  const TheBatchScreen({Key? key}) : super(key: key);

  @override
  State<TheBatchScreen> createState() => _TheBatchScreenState();
}

class _TheBatchScreenState extends State<TheBatchScreen> {
  String imageName = 'images/logoooo2.png';
  String titleName_1 = 'The Batch: Weekly AI news ';
  String titleName_2 = 'for engineers,executives.';
  String name_1 = 'Weekly Newsletter';
  String name_2 = 'Andrew’s Letters';
  String name_3 = 'Machine Learning Research';
  String name_4 = 'Business';
  String name_5 = 'Science';
  String subscribeCard = 'Subscribe';
  String name_6 = 'Society';
  String name_7 = 'Culture';
  var texStyle = const TextStyle(
      color: Colors.grey,
      fontSize: 16,
      fontFamily: 'Fredokat',
      fontWeight: FontWeight.bold);
  var space = const SizedBox(
    width: 20,
  );
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                FirstPartBar(
                  barHeight: 400,
                  fontSize2: 30,
                  color2: Colors.white,
                  color3: Colors.white,
                  fontSize: 40,
                  color: Colors.lightBlueAccent,
                  color1: Colors.lightBlueAccent,
                  image: imageName,
                  title: titleName_1,
                  title1: titleName_2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name_1,
                      style: texStyle,
                    ),
                    space,
                    Text(name_2, style: texStyle),
                    space,
                    Text(name_3, style: texStyle),
                    space,
                    Text(name_4, style: texStyle),
                    space,
                    Text(name_5, style: texStyle),
                    space,
                    Text(name_6, style: texStyle),
                    space,
                    Text(name_7, style: texStyle),
                    space,
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    space,
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        subscribeCard,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // background
                        // foreground
                      ),
                    ),
                    space,
                    FloatingActionButton(
                        backgroundColor: Colors.white,
                        elevation: 0,
                        onPressed: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        child: isSelected
                            ? SvgPicture.asset(
                                'images/moon.svg',
                                width: 30,
                                height: 30,
                              )
                            : SvgPicture.asset('images/sun.svg'))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    String imageName = 'images/the_batch.png';
    String courseTitle = 'Courses';
    String theBatchTitle = 'The Batch';
    String eventsTitle = 'Events';
    String blogTitle = 'Bolg';
    String companyTitle = 'Company';
    String font = 'Fredokat';
    String getBtnText = 'Get Al News';

    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 110,
      actions: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Image.asset(
                  imageName,
                ),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
              ),
              const SizedBox(
                width: 35,
              ),
              AppBarTitles(
                title: courseTitle,
                font: font,
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
                onPressed: () {},
                title: theBatchTitle,
                font: font,
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
                title: blogTitle,
                font: font,
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
                title: eventsTitle,
                font: font,
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
                title: companyTitle,
                font: font,
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
                child: Center(child: Text(getBtnText)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
