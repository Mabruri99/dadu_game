import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftNumber = 1;
  int rightNumber = 1;

  void myFunc() {
    setState(() {
      leftNumber = Random().nextInt(6) + 1;
      rightNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text('Dicee'),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Created By Ruri',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'bebas',
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        myFunc();
                      },
                      child: Image.asset('images/dice$leftNumber.png'),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        myFunc();
                      },
                      child: Image.asset('images/dice$rightNumber.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
