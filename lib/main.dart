import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());

}


class Xylophone extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    void playSound(int soundNumber)
    {
        final player = AudioCache();
       player.play('note$soundNumber.wav');

    }


    Widget Buttons(Color c , int song_number)
    {
      return  Expanded(
              child: FlatButton(
                
                color: c,
                onPressed: () {
                  playSound(song_number);
                },
                child: Text(''),
              ),
            );
    }


    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.black,

      body: SafeArea(
        child: Column(


         crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Buttons(Colors.red, 1),
            Buttons(Colors.orange, 2),
            Buttons(Colors.yellow, 3),
            Buttons(Colors.green, 4),
            Buttons(Colors.teal, 5),
            Buttons(Colors.blue, 6),
            Buttons(Colors.purple , 7),


          

          ],
        ),
      ),
      ),
    ); 
  }
}