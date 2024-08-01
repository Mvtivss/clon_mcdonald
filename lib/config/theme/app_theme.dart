import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
  Colors.yellow
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;

  AppTheme({this.selectedColor = 0, required this.isDarkmode})
      : assert(selectedColor >= 0, 'El color seleccionado deber ser mayor a 0'),
        assert(selectedColor < colorList.length,
            'El color seleccionado deber ser menor a ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      colorSchemeSeed: colorList[selectedColor],
      brightness: isDarkmode ? Brightness.dark : Brightness.light,
      appBarTheme: const AppBarTheme(centerTitle: false));
}
