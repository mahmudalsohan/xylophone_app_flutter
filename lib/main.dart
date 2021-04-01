import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  var node = 0;
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
                    var node = 1;
                    ringNode(node);
                  },
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    var node = 2;
                    ringNode(node);
                  },
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    var node = 3;
                    ringNode(node);
                  },
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    var node = 4;
                    ringNode(node);
                  },
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    var node = 5;
                    ringNode(node);
                  },
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    var node = 6;
                    ringNode(node);
                  },
                  child: Container(
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    var node = 7;
                    ringNode(node);
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
