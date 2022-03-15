import 'package:flutter/material.dart';

class FourthPartBar extends StatelessWidget {
  const FourthPartBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 600,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 8,
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              width: 1000,
              height: 500,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(40),
                        child: Image.asset(
                          'images/Workera.webp',
                          height: 220,
                          width: 350,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: const [
                            Text(
                              'Don’t know where to start? Test your current abilities and create your personalized learning pathway to become a machine learning expert.',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              'Already an ML practitioner? Make sure that you’re up to date with the latest techniques and advance your career by identifying your next steps.',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.black,
                  ),
                  const Text(
                      'Workera’s free assessments help you identify the skills you need for the AI roles you want, providing the feedback, resources, and credentials to successfully showcase your skillset.'),
                  Container(
                    height: 60,
                    width: 180,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
