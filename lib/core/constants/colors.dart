import 'package:flutter/material.dart';

class AppColors {
  /// primary = #3949AB
  static const Color primary = Color(0xff4684E7);

  /// grey = #B7B7B7
  static const Color grey = Color(0xffB7B7B7);

  /// light = #F8F5FF
  static const Color light = Color(0xffF8F5FF);

  /// light = #C7D0EB
  static const Color blueLight = Color(0xffC7D0EB);

  /// black = #000000
  static const Color black = Color(0xff000000);

  /// white = #FFFFFF
  static const Color white = Color(0xffFFFFFF);

  /// green = #50C474
  static const Color green = Color(0xff50C474);

  /// red = #F4261A
  static const Color red = Color(0xffF4261A);

  /// card = #E5E5E5
  static const Color card = Color(0xffE5E5E5);

  /// disabled = #C8D1E1
  static const Color disabled = Color(0xffC8D1E1);

  //error
  static const Color error = Color(0xffFF0000);
}

String getColorString(Color color) {
  if (color == Colors.red) {
    return 'red';
  } else if (color == Colors.blue) {
    return 'blue';
  } else if (color == Colors.green) {
    return 'green';
  } else if (color == Colors.yellow) {
    return 'yellow';
  } else if (color == Colors.purple) {
    return 'purple';
  } else if (color == Colors.orange) {
    return 'orange';
  } else if (color == Colors.pink) {
    return 'pink';
  } else if (color == Colors.teal) {
    return 'teal';
  } else {
    return 'red';
  }
}

Color changeStringtoColor(String color) {
  if (color == 'red') {
    return Colors.red;
  } else if (color == 'blue') {
    return Colors.blue;
  } else if (color == 'green') {
    return Colors.green;
  } else if (color == 'yellow') {
    return Colors.yellow;
  } else if (color == 'purple') {
    return Colors.purple;
  } else if (color == 'orange') {
    return Colors.orange;
  } else if (color == 'pink') {
    return Colors.pink;
  } else if (color == 'teal') {
    return Colors.teal;
  } else {
    return Colors.red;
  }
}
