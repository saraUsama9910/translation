import 'package:nonamed/models/number.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
class Items extends StatelessWidget {
  const Items({super.key,required this.number, required this.color,});
final Numbers number;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
margin: EdgeInsets.all(2),
      height: 70,
      color: color,
      child: Row(

        children: [
          // number.image==null?const SizedBox():
          Image.asset(number.image!),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.jpName),
              Text(number.egName),

            ],

          ),
          Spacer(flex: 1,),
          IconButton(
            splashColor: Colors.white60,

              onPressed: (){
                final player = AudioPlayer();
               // player.setSourceAsset('assets/sounds/numbers/number_one_sound.mp3');
              player.play(AssetSource(number.sound));
              },
      icon: Icon(Icons.play_circle),
    ),



        ],
      ),
    );
  }
}
class PhrasesItems extends StatelessWidget {
  const PhrasesItems({super.key, required this.number, required this.color});
  final Numbers number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      height: 70,
      color: color,
      child: Row(
        children: [
          Text(number.jpName),
          Text(number.egName),

          Spacer(flex: 1,),
          IconButton(
            splashColor: Colors.white60,

            onPressed: (){
              final player = AudioPlayer();
              // player.setSourceAsset('assets/sounds/numbers/number_one_sound.mp3');
              player.play(AssetSource(number.sound));
            },
            icon:  Icon(Icons.play_circle),
          ),

        ],
      ),
    );
  }
}
