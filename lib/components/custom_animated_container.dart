import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatefulWidget {
  final Color color;
  final double width;
  final double height;
  Curve curve;
  CustomAnimatedContainer(
      {@required this.color,
      this.curve,
      @required this.height,
      @required this.width});

  @override
  _CustomAnimatedContainerState createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      color: widget.color,
      width: widget.width,
      height: widget.height,
      duration: Duration(milliseconds: 700),
      curve: widget.curve,
    );
  }
}
