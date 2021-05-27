import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  noteNumber(int num) {
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$num.wav"),
      autoStart: true,
    );
  }

  Widget noteKey(int key, Color color) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          noteNumber(key);
        },
        color: color,
        child: Container(),
        enableFeedback: false,
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
              noteKey(1, Colors.red),
              noteKey(2, Colors.orange),
              noteKey(3, Colors.yellow),
              noteKey(4, Colors.lightGreen),
              noteKey(5, Colors.green),
              noteKey(6, Colors.blue),
              noteKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
