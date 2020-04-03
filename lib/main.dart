import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:english_words/english_words.dart';
import 'package:flutte_project/pages/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    printJson();
    return MaterialApp(
      title: 'Startup Name Generator',
      home: News(),
    );
  }
}

void printJson() async {
  final response = await http.get('https://pokeapi.co/api/v2/pokemon');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Error');
  }
}
