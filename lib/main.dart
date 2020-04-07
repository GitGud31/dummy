import 'package:dummy/screens/animations_screen.dart';
import 'package:dummy/screens/audio_screen.dart';
import 'package:dummy/screens/image_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Home(),
        '/Animations': (BuildContext context) => AnimationsScreen(),
        '/Images': (BuildContext context) => ImagePage(),
        '/Sound': (BuildContext context) => AudioScreen(),
      },
    );
  }
}

class ImageScreen {}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dummy', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white10,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.redAccent,
                child: const Text('Animations',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pushNamed(context, '/Animations');
                },
              ),
              SizedBox(height: 20),
              RaisedButton(
                child:
                    const Text('Images', style: TextStyle(color: Colors.white)),
                color: Colors.amberAccent,
                onPressed: () {
                  Navigator.pushNamed(context, '/Images');
                },
              ),
              SizedBox(height: 20),
              RaisedButton(
                color: Colors.blueAccent,
                child:
                    const Text('Sound', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pushNamed(context, '/Sound');
                },
              ),
            ],
          ),
        ));
  }
}
