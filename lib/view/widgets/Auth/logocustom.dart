import 'package:flutter/widgets.dart';

import '../../../core/constant/imageasset.dart';


class Logocustom extends StatelessWidget {
  const Logocustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(248, 248, 248, 1),
              borderRadius: BorderRadius.circular(200)),
          child: Image.asset(
            Appimageasset.logo,
            height: 107,
          )),
    );
  }
}
