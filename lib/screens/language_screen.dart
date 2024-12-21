import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language', style:TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 25),),
      ),
      // body: Center(
      //   child: Text('Language Page'),
      // ),
    );
  }
}