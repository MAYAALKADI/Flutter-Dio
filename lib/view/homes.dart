import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homes extends StatelessWidget {
  const Homes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Homes",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
