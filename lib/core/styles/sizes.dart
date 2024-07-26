import 'package:flutter/material.dart';

class Sizes {
  static double? screenHeight;
  static double? screenWidth;
  static const double borderRadius = 5;

// Intialize the height and the width of the device
  static void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    print('Screen Height: $screenHeight');
    print('Screen Width: $screenWidth');
  }
}
