import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Language',
          style:TextStyle(fontWeight: FontWeight.bold,
              color: Color(0xff8B0000),
              fontSize: 25),),
      ),
      backgroundColor: Colors.grey[350],
      // body: Center(
      //   child: Text('Language Page'),
      // ),
    );
  }
}