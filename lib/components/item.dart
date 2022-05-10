import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:toku/models/number.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.number, required this.color, required this.itemType,
  }) : super(key: key);
  final Number number;
  final Color color;
  final String itemType;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: color,
      child: Row(
        children: [
          Container(
              color: Color(0xfffff6dc),
              child: Image.asset(
                number.image,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                number.jBName,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                number.enName,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ]),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            
            onPressed: () {
              try {
              AudioCache player = AudioCache(prefix: 'assets/sounds/@itemType/');
              player.play(number.sound);}
            catch(ex){
              print(ex);
            }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
