import 'package:flutter/material.dart';

import '../constants.dart';
class MailAndRegisterPart extends StatefulWidget {
  const MailAndRegisterPart({Key? key}) : super(key: key);

  @override
  State<MailAndRegisterPart> createState() => _MailAndRegisterPartState();
}

class _MailAndRegisterPartState extends State<MailAndRegisterPart> {
  String dropdownValue =
      'Please Selected Country                                                                          ';
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return    Container(
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
    );
  }
}
