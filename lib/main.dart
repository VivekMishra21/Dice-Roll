import 'package:flutter/material.dart';
import 'package:image_roll/gradientcolors.dart';


void main(){
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientColors(
        Colors.blue,
        Colors.lightGreenAccent
      ),
    ),
  ));
}