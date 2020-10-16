
import 'package:flutter/material.dart';

TextStyle textBlueLarge(){
  return TextStyle(fontSize: 19, color: Colors.blue);
}
TextStyle textTitleWhite(){
  return TextStyle(fontSize: 22, color: Colors.white);
}
AppBar baseAppBar(String title){
  return AppBar(title: Text(title,style: textTitleWhite(),),centerTitle: true,);
}
