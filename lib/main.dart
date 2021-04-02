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
              buildKey(node: 1, color: Colors.red),
              buildKey(node: 2, color: Colors.orange),
              buildKey(node: 3, color: Colors.yellow),
              buildKey(node: 4, color: Colors.green),
              buildKey(node: 5, color: Colors.blue),
              buildKey(node: 6, color: Colors.brown),
              buildKey(node: 7, color: Colors.blueGrey),
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

  Expanded buildKey({int node, MaterialColor color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          ringNode(node);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
