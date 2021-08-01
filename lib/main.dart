import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    ),
  );
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int dicee_1 = 1;
  int dicee_2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dicee",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    setState(() {
                      dicee_1 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    height: 150,
                    width: 140,
                    image: AssetImage("images/dice$dicee_1.png"),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      dicee_2 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    height: 150,
                    width: 140,
                    image: AssetImage("images/dice$dicee_2.png"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
