import 'dart:math';

import 'package:flutter/material.dart';
import 'package:getx_starter/util/app_util.dart';

Card HeaderCard() {
  final color = Colors.primaries[Random().nextInt(Colors.primaries.length)];

  return Card(
    elevation: 15,
    margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20), topRight: Radius.circular(20))),
    child: Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Text(
        AppUtil.appName,
        style: TextStyle(
          fontSize: 20,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
