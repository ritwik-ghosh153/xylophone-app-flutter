import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {runApp(XylophoneApp());}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              note(Colors.red,1),
              note(Colors.yellow,2),
              note(Colors.orange,3),
              note(Colors.green,4),
              note(Colors.teal,5),
              note(Colors.blue,6),
              note(Colors.purple,7),
            ],
          ),
        ),
      ),
    );
  }
  Widget note(Color color, int note)
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          final player=AudioCache();
          player.play('note$note.wav');
        },
      ),
    );
  }
}
