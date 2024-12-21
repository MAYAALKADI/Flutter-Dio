import 'package:dio/dio.dart';

import 'errormodel.dart';


class Apiexceptions implements Exception {
  final Errormodel error;

  Apiexceptions({required this.error});
}

void handleDioExceptions(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));
    case DioExceptionType.sendTimeout:
      throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));
    case DioExceptionType.receiveTimeout:
      throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));
    case DioExceptionType.badCertificate:
      throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));
    case DioExceptionType.cancel:
      throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));
    case DioExceptionType.connectionError:
      throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));
    case DioExceptionType.unknown:
      throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));
    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400:
//Bad Request
          throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));

        case 401:
//unauthorized
          throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));

        case 403:
//forbidden
          throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));

        case 404:
//not found
          throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));

        case 409:
//cofficient
          throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));

        case 422:
//unprocessable Entity
          throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));

        case 504:

          ///Server Exception
          throw Apiexceptions(error: Errormodel.fromJson(e.response!.data));
      }
  }
}
