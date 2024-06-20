import 'package:flutter/material.dart';

Widget elevatedButtonWidget({String? text, Color? textColor, Function()? onTap}) {
  return SizedBox(
    height: 70,
    width: double.infinity,
    child: ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
      child: Text(
        '$text',
        style: TextStyle(color: textColor),
      ),
    ),
  );
}
