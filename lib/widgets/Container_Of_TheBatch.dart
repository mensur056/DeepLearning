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
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: const Text('hello'),
          height: containerBarHeight,
          width: containerBarWidth,
        ),
        space,
        Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: const Text('hello'),
          height: containerBarHeight,
          width: containerBarWidth,
        ),
        space,
        Container(
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: const Text('hello'),
          height: containerBarHeight,
          width: containerBarWidth,
        ),
      ],
    );
  }
}
