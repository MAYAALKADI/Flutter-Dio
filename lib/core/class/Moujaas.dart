import 'dart:convert';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;
import 'package:untitled17/core/class/requeststatus.dart';
import '../functions/checkinternet.dart';

class Moujaas {
  Future<Either<Requeststatus, Map>> post(String linkurl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
          Uri.parse(linkurl),
          body: data,
        );
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body);
          print(responsebody);
          return Right(responsebody);
        } else {
          return const Left(Requeststatus.serverfailure);
        }
      } else {
        return const Left(Requeststatus.offlinefailure);
      }
    } catch (_) {
      return const Left(Requeststatus.serverException);
    }
  }
}
