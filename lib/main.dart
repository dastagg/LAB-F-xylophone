import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  static AudioCache player = AudioCache();

  void playSound(int noteNumber) {
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({required Color color, required int sound}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {playSound(sound); },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, sound: 1),
              buildKey(color: Colors.orange, sound: 2),
              buildKey(color: Colors.yellow, sound: 3),
              buildKey(color: Colors.green, sound: 4),
              buildKey(color: Colors.blue, sound: 5),
              buildKey(color: Colors.indigo, sound: 6),
              buildKey(color: Colors.purple, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
