import 'package:flutter/material.dart';

class AudioScreen extends StatefulWidget {
  @override
  _AudioScreenState createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  @override
  Widget build(BuildContext context) {
    final Color _color = Colors.white;
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(backgroundColor: ThemeData().primaryColor),
        body: Center(child: const Text('Audio screen')));
  }
}
