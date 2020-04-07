import 'package:dummy/components/custom_animated_container.dart';
import 'package:dummy/components/stagger_animation.dart';
import 'package:dummy/custom/sine_curve.dart';
import 'package:flutter/material.dart';

class AnimationsScreen extends StatefulWidget {
  @override
  _AnimationsScreenState createState() => _AnimationsScreenState();
}

class _AnimationsScreenState extends State<AnimationsScreen>
    with SingleTickerProviderStateMixin {
  Color _color = Colors.white;
  double _width = 60;
  double _height = 60;
  Curve _curve = Curves.linear;
  bool _isAnimated = false;

  void _animationOn({
    Color color,
    double width,
    double height,
    Curve curve,
  }) {
    setState(() {
      _isAnimated = !_isAnimated;
      _curve = curve;
    });
    _width = width;
    _height = height;

    _color = color;
  }

  void _animationOff({
    Color color,
    double width,
    double height,
    Curve curve,
  }) {
    setState(() {
      _isAnimated = !_isAnimated;
      _curve = curve;
    });
    _width = width;
    _height = height;

    _color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Animations'),
          centerTitle: true,
          backgroundColor: Colors.grey),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const Text('Animated Controller'),
            LimitedBox(
              maxHeight: 120,
              maxWidth: 120,
              child: Center(
                  child: CustomAnimatedContainer(
                color: _color,
                width: _width,
                height: _height,
                curve: _curve,
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  splashColor: Colors.white,
                  color: Colors.black,
                  child: const Text('1', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    _isAnimated
                        ? _animationOn(
                            color: Colors.pink,
                            height: 120,
                            width: 140,
                            curve: Curves.easeOutBack,
                          )
                        : _animationOff(
                            color: Colors.purple,
                            height: 60,
                            width: 60,
                            curve: Curves.easeInQuint,
                          );
                  },
                ),
                RaisedButton(
                  splashColor: Colors.white,
                  color: Colors.black,
                  child: const Text('2', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    _isAnimated
                        ? _animationOn(
                            color: Colors.lime,
                            height: 120,
                            width: 120,
                            curve: Curves.bounceOut,
                          )
                        : _animationOff(
                            color: Colors.purple,
                            height: 60,
                            width: 60,
                            curve: Curves.bounceIn,
                          );
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  splashColor: Colors.white,
                  color: Colors.black,
                  child: const Text('3', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    _isAnimated
                        ? _animationOn(
                            color: Colors.orange,
                            height: 120,
                            width: 120,
                            curve: Curves.bounceInOut,
                          )
                        : _animationOff(
                            color: Colors.purple,
                            height: 60,
                            width: 60,
                            curve: SineCurve(count: 1),
                          );
                  },
                ),
                RaisedButton(
                  splashColor: Colors.white,
                  color: Colors.black,
                  child: const Text('4', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    _isAnimated
                        ? _animationOn(
                            color: Colors.orange,
                            height: 120,
                            width: 120,
                            curve: Curves.elasticIn,
                          )
                        : _animationOff(
                            color: Colors.purple,
                            height: 60,
                            width: 60,
                            curve: Curves.fastOutSlowIn,
                          );
                  },
                ),
              ],
            ),
            SizedBox(height: 5),
            const Text('Animated Tween'),
            SizedBox(height: 5),
            StaggerDemo()
          ],
        ),
      ),
    );
  }
}
