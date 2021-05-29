import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: EmojiPage(),
    )
  );
}

class EmojiPage extends StatelessWidget {
  const EmojiPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.yellow.shade200,
title: Center(
  child:   Text(
    'I am ...',
    style: TextStyle(
      color: Colors.orange.shade800,
    fontFamily: 'Limelight',
      fontSize: 30,
      fontWeight: FontWeight.bold,

    ),

  ),
),

      ),
      body: RealEmoji()
    );
  }
}

class RealEmoji extends StatefulWidget {
  const RealEmoji({Key key}) : super(key: key);

  @override
  _RealEmojiState createState() => _RealEmojiState();
}

class _RealEmojiState extends State<RealEmoji> {
  int numberofPage=15;
  String message="";
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.yellow.shade100,
       child: Column(
         children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(80.0),
                child: FlatButton(
                  child: Image(
                    image: AssetImage('images/emoji$numberofPage.png'),
                  ),
                  onPressed: (){
                    //print('hello');
                    randomValue();
                    setState(() {
                      image: AssetImage('images/emoji$numberofPage.png');
                    });
                  },
                ),
              ),
            ),
           Text(message,
             style: TextStyle(
               fontSize: 40,
               fontFamily: 'Pattaya',
               letterSpacing: 5,
               color: Colors.orange.shade800,
             )
           ),
           SizedBox(
             height: 80,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(
                 Icons.audiotrack,
                 color: Colors.black12,
                  size: 30,
               ),
               SizedBox(
                 width: 20,
               ),
               Text(
                 'created by Yaren Polat',
                 style: TextStyle(
                   color: Colors.black12,
                 ),
               ),
             ],
           )
         ],

       ),
    );
  }
  void randomValue(){
    numberofPage= Random().nextInt(14)+1;
    if( numberofPage==1)
      message= "an angel";
    else if( numberofPage==2)
      message= "angry";
    else if( numberofPage==3)
      message= "cool";
    else if( numberofPage==4)
      message= "lol";
    else if( numberofPage==5)
      message= "terrified";
    else if( numberofPage==6)
      message= "fearful";
    else if( numberofPage==7)
      message= "great";
    else if( numberofPage==8)
      message= "in love";
    else if( numberofPage==9)
      message= "disappointed";
    else if( numberofPage==10)
      message= "good";
    else if( numberofPage==11)
      message= "thinking";
    else if( numberofPage==12)
      message= "sad";
    else if( numberofPage==13)
      message= "hopeless";
    else if( numberofPage==14)
      message= "awesome";
  }
}


