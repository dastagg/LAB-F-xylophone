import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  static AudioCache player = AudioCache();

  void playSound(int noteNumber) {
    player.play('note$noteNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                color: Colors.red,
                onPressed: () {playSound(1); },
                child: const Text(''),
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {playSound(2); },
                child: const Text(''),
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {playSound(3); },
                child: const Text(''),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {playSound(4); },
                child: const Text(''),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {playSound(5); },
                child: const Text(''),
              ),
              FlatButton(
                color: Colors.indigo,
                onPressed: () {playSound(6); },
                child: const Text(''),
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {playSound(7); },
                child: const Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
