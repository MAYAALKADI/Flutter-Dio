import 'package:flutter/material.dart';

class Titlecustom extends StatelessWidget {
  final String title;
  const Titlecustom({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title, style: Theme.of(context).textTheme.headlineLarge),
    );
  }
}
