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
