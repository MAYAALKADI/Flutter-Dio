import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled17/core/class/requeststatus.dart';
// import 'package:untitled2/core/class/requeststatus.dart';


class Handldatascreen extends StatelessWidget {
  final Requeststatus requeststatus;
  final Widget widget;
  const Handldatascreen(
      {super.key, required this.requeststatus, required this.widget});

  @override
  Widget build(BuildContext context) {
    return requeststatus == Requeststatus.loading
        ? Center(
            child: Text("Loading"),
          )
        : requeststatus == Requeststatus.offlinefailure
            ? Center(
                child: Text("Offline"),
              )
            : requeststatus == Requeststatus.serverfailure
                ? Center(
                    child: Text("Serverfailure"),
                  )
                : requeststatus == Requeststatus.failure
                    ? Center(
                        child: Text("No Data"),
                      )
                    : widget;
  }
}
