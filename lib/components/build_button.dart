import 'package:flutter/material.dart';

class BuildButton extends StatefulWidget {
  Color color;
  String text;
  double width;
  double height;
  //bool isAnimated;
  Curve curve;
  BuildButton(
      {this.color,
      this.curve,
      this.height,
      //this.isAnimated,
      this.text,
      this.width});
  @override
  _BuildButtonState createState() => _BuildButtonState();
}

class _BuildButtonState extends State<BuildButton> {
  bool isAnimated = false;
  void _animationOn({
    Color color,
    double width,
    double height,
    Curve curve,
  }) {
    setState(() {
      isAnimated = !isAnimated;
      widget.curve = curve;
    });
    widget.width = width;
    widget.height = height;

    widget.color = color;
  }

  void _animationOff({
    Color color,
    double width,
    double height,
    Curve curve,
  }) {
    setState(() {
      isAnimated = !isAnimated;
      widget.curve = curve;
    });
    widget.width = width;
    widget.height = height;
    widget.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.black,
      child: Text(widget.text, style: TextStyle(color: Colors.white)),
      onPressed: () {
        isAnimated
            ? _animationOn(
                color: widget.color,
                height: widget.height,
                width: widget.width,
                curve: widget.curve)
            : _animationOff(
                color: Colors.purple,
                height: 60,
                width: 60,
                curve: widget.curve);
      },
    );
  }
}
