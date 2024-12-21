

import '../endpoints.dart';

class Errormodel {
  final int status;
  final String errorMessage;

  Errormodel({required this.status, required this.errorMessage});

  factory Errormodel.fromJson(Map<String, dynamic> jsonData) {
    return Errormodel(
        status: jsonData[ApiKey.status],
        errorMessage: jsonData[ApiKey.ErrorMessage]);
  }
}
