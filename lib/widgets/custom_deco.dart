import 'package:flutter/material.dart';

class AppDecorations {
  static const formStyle = InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(color: Colors.orange),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(color: Colors.orange),
    ),
    labelStyle: TextStyle(
      color: Colors.orange,
    ),
  );
}
