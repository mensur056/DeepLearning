import 'package:deep_learning/screens/blog_screen.dart';
import 'package:deep_learning/screens/home_page.dart';
import 'package:deep_learning/screens/the_batch_screen.dart';
import 'package:deep_learning/widgets/app_bar_titles.dart';
import 'package:deep_learning/widgets/first_part_bar.dart';
import 'package:deep_learning/widgets/third_part_bar.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
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
                GestureDetector(
                  child: Image.asset(
                    'images/deepLearningLogo.png',
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
                  title: 'Courses',
                  font: 'Fredokat',
                  onPressed: () {},
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const TheBatchScreen()));
                  },
                  title: 'Events',
                  font: 'Fredokat',
                ),
                const SizedBox(
                  width: 35,
                ),
                AppBarTitles(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const TheBatchScreen()));
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  hoverDecoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
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
                  color2: Colors.black,
                  color3: Colors.black,
                  fontSize: 60,
                  color: Color(0xFFf96e7b),
                  color1: Color(0xFFf96e7b),
                  image: 'images/logoooo1.png',
                  title: 'Gain the knowledge and ',
                  title1: 'skills for an AI career',
                ),
                Container(
                  color: const Color(0xFFe3f6f7),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30.0, bottom: 20),
                        child: Text(
                          'Our Courses',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.white,
                            ),
                            flex: 2,
                          ),
                          const ThirdPartBar(
                              title1: 'ALL Of Everyone',
                              title2: 'DeepLearning Specialization'),
                          Expanded(
                            child: Container(
                              color: Colors.white,
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.white,
                            ),
                            flex: 2,
                          ),
                          const ThirdPartBar(
                              title1: 'ALL Of Everyone',
                              title2: 'DeepLearning Specialization'),
                          Expanded(
                            child: Container(
                              color: Colors.white,
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.white,
                            ),
                            flex: 2,
                          ),
                          const ThirdPartBar(
                              title1: 'ALL Of Everyone',
                              title2: 'DeepLearning Specialization'),
                          Expanded(
                            child: Container(
                              color: Colors.white,
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.white,
                            ),
                            flex: 2,
                          ),
                          const ThirdPartBar(
                              title1: 'ALL Of Everyone',
                              title2: 'DeepLearning Specialization'),
                          Expanded(
                            child: Container(
                              color: Colors.white,
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.white,
                            ),
                            flex: 2,
                          ),
                          const ThirdPartBar(
                              title1: 'ALL Of Everyone',
                              title2: 'DeepLearning Specialization'),
                          Expanded(
                            child: Container(
                              color: Colors.white,
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 800,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'Find your learning pathway',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'Whether you’re a beginner looking to gain foundational knowledge or an experienced\n practitioner hoping to stay current with advanced skills, our world-class curriculum and\n unique teaching methodology will guide you through every stage of your AI journey.',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          EndBarContainer(
                            headline: 'Introductory',
                            informationTop:
                                'Introductory programs can be understood by a high school graduate as they require little to no knowledge of AI concepts.',
                            informationBot:
                                'Prerequisites:Basic math (linear algebra, statistics) Some coding experience (Python, R, or similar)',
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          EndBarContainer(
                            headline: 'Intermediate',
                            informationTop:
                                'Intermediate programs build on Introductory ones and provide an additional experience of concepts and tools across the subfields of AI.',
                            informationBot:
                                'Prerequisites:Basic math (linear algebra, statistics) Some coding experience (Python, R, or similar)',
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          EndBarContainer(
                            headline: 'Advanced',
                            informationTop:
                                'Advanced programs are the first stage of career specialization in a particular area of machine learning.',
                            informationBot:
                                'Prerequisites:Strong familiarity with Introductory and Intermediate program material, especially the Machine Learning and Deep Learning Specializations',
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class EndBarContainer extends StatelessWidget {
  const EndBarContainer({
    Key? key,
    required this.headline,
    required this.informationTop,
    required this.informationBot,
  }) : super(key: key);
  final String headline;
  final String informationTop;
  final String informationBot;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(1, 5),
          )
        ],
      ),
      height: 450,
      width: 350,
      child: Column(
        children: [
          Container(
            color: Colors.red,
          ),
          Text(headline),
          Text(informationTop)
        ],
      ),
    );
  }
}
