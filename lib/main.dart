import 'package:app10aprendaingles/AprendaIngles.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xff795548),
      scaffoldBackgroundColor: Color(0xfff5e9b9)
    ),
    home: AprendaIngles(),
  )
);

