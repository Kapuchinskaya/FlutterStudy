import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded createButton({Color colorOfButton, int soundNumber}) {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            playSound(soundNumber);
          },
          color: colorOfButton,
          child: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createButton(colorOfButton: Colors.red, soundNumber: 1),
              createButton(colorOfButton: Colors.orange, soundNumber: 2),
              createButton(colorOfButton: Colors.yellow, soundNumber: 3),
              createButton(colorOfButton: Colors.green, soundNumber: 4),
              createButton(colorOfButton: Colors.teal, soundNumber: 5),
              createButton(colorOfButton: Colors.blue, soundNumber: 6),
              createButton(colorOfButton: Colors.purple, soundNumber: 7),
            
            ],
          ),
        ),
      ),
    );
  }
}
