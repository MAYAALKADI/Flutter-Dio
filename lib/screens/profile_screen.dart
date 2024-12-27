import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Profile",
          style:TextStyle(
              fontWeight: FontWeight.bold,
              color:Color(0xff8B0000),
              fontSize: 25),
        ),
      ),
      backgroundColor: Colors.grey[100],
      // body: Center(
      //   child: Text("This is the Cart Page"),
      // ),
    );
  }
}