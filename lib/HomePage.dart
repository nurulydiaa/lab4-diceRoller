import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceimage;
  AssetImage diceimage2;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
      diceimage2 = one;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    int random2 = (1 + Random().nextInt(6));

    AssetImage newImage;
    AssetImage newImage2;

    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }

    switch (random2) {
      case 1:
        newImage2 = one;
        break;
      case 2:
        newImage2 = two;
        break;
      case 3:
        newImage2 = three;
        break;
      case 4:
        newImage2 = four;
        break;
      case 5:
        newImage2 = five;
        break;
      case 6:
        newImage2 = six;
        break;
    }

    setState(() {
      diceimage = newImage;
      diceimage2 = newImage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Dice Roller',
          style: GoogleFonts.rubikMonoOne(
            textStyle: TextStyle(
                color: Colors.white70, letterSpacing: .5, fontSize: 20.0),
          ),
        ),
      ),
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('images/bg.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Text(
                  'roll and roll',
                  style: GoogleFonts.indieFlower(
                    textStyle:
                        TextStyle(color: Colors.brown[200], fontSize: 50.0),
                  ),
                ),
              ),
              Image(
                image: diceimage,
                width: 150.0,
                height: 150.0,
              ),
              Image(
                image: diceimage2,
                width: 150.0,
                height: 150.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  color: Colors.brown[100],
                  padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                  child: Text(
                    'Roll the dice!',
                    style: GoogleFonts.cousine(
                        textStyle: TextStyle(fontSize: 30.0)),
                  ),
                  onPressed: rollDice,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
