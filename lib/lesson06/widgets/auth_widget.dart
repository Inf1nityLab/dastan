

import 'package:flutter/material.dart';

Widget authWidget({String? text, Color? color, IconData? icon, Widget? child}){
  return TextFormField(

    decoration:  InputDecoration(
      prefixIcon: Icon(icon),
      suffixIcon: child,
      filled: true,
        fillColor: color,
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        )
    ),
  );
}