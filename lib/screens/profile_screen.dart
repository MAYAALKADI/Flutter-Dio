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
        title: Text("Profile",
          style:TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 25),
        ),
      ),
      // body: Center(
      //   child: Text("This is the Cart Page"),
      // ),
    );
  }
}