import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Randm());
}

class Randm extends StatefulWidget {
  const Randm({Key? key}) : super(key: key);

  @override
  State<Randm> createState() => _RandmState();
}

class _RandmState extends State<Randm> {
  int press=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Magic ball"),
          centerTitle: true,
        ),
        body: Center(
          child: TextButton(
            onPressed: (){
            setState(() {
              press=Random().nextInt(4)+1;
            });
          },
            child: Image.asset("ball$press.jpg",
            width: 250,
            height: 250,
            ),
          ),
        ),
      ),
    );
  }
}

