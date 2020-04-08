import 'dart:math';

import 'package:flutter/material.dart';

class CustomTweenContainer extends StatefulWidget {
  AnimationController controller;

  @override
  _CustomTweenContainerState createState() => _CustomTweenContainerState();
}

class _CustomTweenContainerState extends State<CustomTweenContainer>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    widget.controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    widget.controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller.view,
      builder: (context, child) {
        return Transform.rotate(
          angle: widget.controller.value * 2 * pi,
          child: child,
        );
      },
      child: Container(
          width: 40,
          height: 60,
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          color: Colors.redAccent),
    );
  }
}
