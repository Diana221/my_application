import 'dart:math';//для random
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(
        new MaterialApp(
            debugShowCheckedModeBanner: false, //убирает надпись debug
            home: MyApp()));


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Color color = Color((Random().nextDouble()
      * 0xFFFFFF).toInt()).withOpacity(1.0);//рандомно задаю цвет

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Test Application"),
        backgroundColor: Colors.black45,

      ),

      body: GestureDetector(//To identify a gesture targeted on a widget

        onTap: () {//при нажатии на экран

          setState(() => color = Color((Random().nextDouble()
              * 0xFFFFFF).toInt()).withOpacity(1.0)

          );
        },

        child: Container( color: color,

          child: Center(

            child: Text( "Hey there!\n"
                "Tap anywhere on the screen! ",

                textAlign: TextAlign.center

            ),
          ),
        ),
      ),
    );
  }
}