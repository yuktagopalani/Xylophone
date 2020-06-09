import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());
void play(int num)
{
  final player=AudioCache();
  player.play('note$num.wav');

}
// ignore: missing_return;
Expanded func({int num,Color color})
{
  return Expanded(
    child: FlatButton(
      onPressed: ()
      {
        play(num);

      },
//                child: Text("Click"),
      color: color,
    ),
  );
}

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
                func(num:1,color:Colors.red),

                Expanded(
                  child: FlatButton(
                    onPressed: ()
                    {
                      play(2);

                    },
//                child: Text("Click"),
                    color: Colors.teal,
                  ),
                ),

                Expanded(
                  child: FlatButton(
                    onPressed: ()
                    {
                      final player=AudioCache();
                      player.play('note3.wav');

                    },
//                child: Text("Click"),
                    color: Colors.yellow,
                  ),
                ),

                Expanded(
                  child: FlatButton(
                    onPressed: ()
                    {
                      final player=AudioCache();
                      player.play('note4.wav');

                    },
//                child: Text("Click"),
                    color: Colors.blueAccent,
                  ),
                ),

                Expanded(
                  child: FlatButton(
                    onPressed: ()
                    {
                      final player=AudioCache();
                      player.play('note5.wav');

                    },
//                child: Text("Click"),
                    color: Colors.orange,
                  ),
                ),

                Expanded(
                  child: FlatButton(
                    onPressed: ()
                    {
                      final player=AudioCache();
                      player.play('note6.wav');

                    },
//                child: Text("Click"),
                    color: Colors.pink,
                  ),
                ),

                Expanded(
                  child: FlatButton(
                    onPressed: ()
                    {
                      final player=AudioCache();
                      player.play('note7.wav');

                    },
//                child: Text("Click"),
                    color: Colors.lightGreen,
                  ),
                ),

              ],
            ),

        ),
      ),
    );
  }
}
