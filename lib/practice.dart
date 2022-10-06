import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                  "My First Flutter App",
                  style: TextStyle(
                    color: Colors.indigo[900],
                  )
              ),
            ),
            backgroundColor: Colors.lightGreenAccent,
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Text("Container 1"),
                  width: 200,
                  height: 100,
                  color: Colors.yellowAccent,
                  margin: EdgeInsets.all(50),
                  padding: EdgeInsets.all(20),
                ),

                Container(
                  child: Text("Container 2"),
                  width: 200,
                  height: 100,
                  color: Colors.pinkAccent[100],
                  margin: EdgeInsets.all(50),
                  padding: EdgeInsets.all(20),
                ),

                Container(
                  child: Text("Container 3"),
                  width: 400,
                  height: 100,
                  color: Colors.lightGreenAccent[400],
                  margin: EdgeInsets.all(50),
                  padding: EdgeInsets.all(20),
                ),
              ]
          )
      ),
    );
  }
}