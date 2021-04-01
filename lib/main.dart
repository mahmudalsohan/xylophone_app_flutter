import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text(
            'Xylophone',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    ringNode(1);
                  },
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    ringNode(2);
                  },
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    ringNode(3);
                  },
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    ringNode(4);
                  },
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    ringNode(5);
                  },
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    ringNode(6);
                  },
                  child: Container(
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    ringNode(7);
                  },
                  child: Container(
                    color: Colors.cyanAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void ringNode(node) {
    final player = AudioCache();
    player.play('note$node.wav');
  }
}
