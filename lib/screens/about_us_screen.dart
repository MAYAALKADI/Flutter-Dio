import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us', style:TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 25),),
      ),
      // body: Center(
      //   child: Text('About Us Page'),
      // ),
    );
  }
}