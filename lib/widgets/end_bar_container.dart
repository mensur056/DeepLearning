import 'package:flutter/material.dart';

class EndBarContainer extends StatelessWidget {
  const EndBarContainer({
    Key? key,
    required this.headline,
    required this.informationTop,
    required this.informationBot,
    required this.color1,
    required this.color2,
  }) : super(key: key);
  final String headline;
  final String informationTop;
  final String informationBot;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFd2dce0),
            blurRadius: 7,
            offset: Offset(1, 6),
          )
        ],
      ),
      height: 450,
      width: 350,
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0, left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 50,
                  height: 60,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: color1,
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  width: 50,
                  height: 90,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: color2,
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  width: 50,
                  height: 120,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              headline,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              informationTop,
              style: const TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              informationBot,
              style: const TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
