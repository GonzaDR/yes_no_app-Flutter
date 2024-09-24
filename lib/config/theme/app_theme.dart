import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 118, 61, 210);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colores pueden ser de 0 a ${_colorThemes.length}');
  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      //brightness: Brightness.dark
    ); // modo oscuro aplidado de manera global
  }
}
