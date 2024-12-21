import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Testpackage extends StatefulWidget {
  const Testpackage({super.key});

  @override
  State<Testpackage> createState() => _TestpackageState();
}

class _TestpackageState extends State<Testpackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(),
      ),
    );
  }
}
