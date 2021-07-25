import 'package:bmi_calculator/Pages/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('BMI Calculator'),
          ),
          //drawer: Drawerc(),
          body: Home(),
        ));
  }
}
