import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart", style:TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 25),
        ),
      ),
      // body: Center(
      //   child: Text("This is the Cart Page"),
      // ),
    );
  }
}