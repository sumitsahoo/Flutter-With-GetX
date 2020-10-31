import 'package:flutter/material.dart';
import 'package:get/get.dart';

BoxDecoration BackgroundGradient() {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: Get.isDarkMode
          ? [Colors.black, Colors.black87]
          : [Colors.cyan, Colors.yellow],
    ),
  );
}
