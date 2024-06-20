

import 'package:flutter/cupertino.dart';

Widget container({double? height, double? width, String? image}){
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image:  DecorationImage(
        image: AssetImage('$image'),
        fit: BoxFit.fill
      )
    ),
  );
}