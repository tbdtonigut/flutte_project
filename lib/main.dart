import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bienvenido a esta pedazo de app'),
        ),
        body: Center(
          child: Text('Hola Mundo, soy toni'),
        ),
      ),
    );
  }
}