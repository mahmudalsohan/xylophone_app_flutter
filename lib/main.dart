import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
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
          child: Center(
              child: ElevatedButton(
            onPressed: () {
              final player = AudioCache();
              player.play('note1.wav');
            },
            child: Text('press'),
          )),
        ),
      ),
    );
  }
}
