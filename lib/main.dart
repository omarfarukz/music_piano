import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildKey({Color color, int soundnumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundnumber);
        },
        child: Text('Play'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(
                  color: Colors.red,
                  soundnumber: 1,
                ),
                buildKey(
                  color: Colors.amber,
                  soundnumber: 2,
                ),
                buildKey(
                  color: Colors.cyan,
                  soundnumber: 3,
                ),
                buildKey(
                  color: Colors.teal,
                  soundnumber: 4,
                ),
                buildKey(
                  color: Colors.blue,
                  soundnumber: 5,
                ),
                buildKey(
                  color: Colors.green,
                  soundnumber: 6,
                ),
                buildKey(
                  color: Colors.blueGrey,
                  soundnumber: 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
