import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class XylophoneScreen extends StatelessWidget {
  void playAudio(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Widget buildKey(Color color1, Color color2, Color color3, int audio) {
    return Expanded(
      child: GradientButton(
        child: null,
        increaseHeightBy: double.infinity,
        increaseWidthBy: double.infinity,
        shapeRadius: BorderRadius.circular(0.0),
        gradient: LinearGradient(colors: [color1, color2, color3]),
        callback: () {
          playAudio(audio);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildKey(Colors.red[600], Colors.red[500], Colors.red[400], 1),
              buildKey(Colors.purple[600], Colors.purple[500],
                  Colors.purple[400], 2),
              buildKey(Colors.indigo[600], Colors.indigo[500],
                  Colors.indigo[400], 3),
              buildKey(Colors.lightBlue[600], Colors.lightBlue[500],
                  Colors.lightBlue[400], 4),
              buildKey(Colors.teal[600], Colors.teal[500], Colors.teal[400], 5),
              buildKey(Colors.lightGreen[600], Colors.lightGreen[500],
                  Colors.lightGreen[400], 6),
              buildKey(Colors.yellow[600], Colors.yellow[500],
                  Colors.yellow[400], 7),
            ],
          ),
        ),
      ),
    );
  }
}
