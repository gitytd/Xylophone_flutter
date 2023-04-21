import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

   noteButton({int? soundNumber, Color? color  })=> Expanded(
      child: TextButton(
        onPressed: () async {
          playSound(soundNumber!);
        },
        child: Container(
          color: color,
        ),
      ),
    );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              noteButton(soundNumber: 1, color: Colors.red),
              noteButton(soundNumber: 2, color: Colors.orange),
              noteButton(soundNumber: 3, color: Colors.yellow),
              noteButton(soundNumber: 4, color: Colors.green),
              noteButton(soundNumber: 5, color: Colors.greenAccent),
              noteButton(soundNumber: 6, color: Colors.blue),
              noteButton(soundNumber: 7, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
