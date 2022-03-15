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
                      spreadRadius: 2,
                      blurRadius: 2,
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
                        padding: const EdgeInsets.only(left: 60),
                        child: Image.asset(
                          'images/Workera.webp',
                          height: 220,
                          width: 300,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 60.0, right: 20),
                          child: Column(
                            children: const [
                              Text(
                                'Don’t know where to start? Test your current abilities and create your personalized learning pathway to become a machine learning expert.',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Already an ML practitioner? Make sure that you’re up to date with the latest techniques and advance your career by identifying your next steps.',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 60.0, right: 60),
                    child: Divider(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 150.0, right: 150),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Workera’s free assessments help you identify the skills you need for the AI roles you want, providing the feedback, resources, and credentials to successfully showcase your skillset.',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: const Center(
                                child: Text(
                              'Learn More',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            height: 60,
                            width: 180,
                          )
                        ],
                      ),
                    ),
                  ),
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
