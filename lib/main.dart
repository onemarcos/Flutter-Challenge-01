import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          title: Text('Menu'),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/doberman.jpg'),
          ),
        ),
      ),
    ),
  );
}
