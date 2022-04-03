import 'package:flutter/material.dart';

class ContainerOfTheBatch extends StatelessWidget {
  const ContainerOfTheBatch({
    Key? key,
    required this.containerBarHeight,
    required this.containerBarWidth,
    required this.space,
  }) : super(key: key);

  final double containerBarHeight;
  final double containerBarWidth;
  final SizedBox space;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: const Text('hello'),
          height: containerBarHeight,
          width: containerBarWidth,
          color: Colors.red,
        ),
        space,
        Container(
          child: const Text('hello'),
          height: containerBarHeight,
          width: containerBarWidth,
          color: Colors.red,
        ),
        space,
        Container(
          child: const Text('hello'),
          height: containerBarHeight,
          width: containerBarWidth,
          color: Colors.red,
        ),
      ],
    );
  }
}
