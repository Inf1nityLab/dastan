

import 'package:flutter/material.dart';

void navigation(BuildContext context, Widget screen){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> screen),);
}