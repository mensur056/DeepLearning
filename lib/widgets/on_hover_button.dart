import 'package:flutter/material.dart';

class OnHoverButton extends StatefulWidget {
  const OnHoverButton({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        child: widget.child,
        duration: const Duration(milliseconds: 200),
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
