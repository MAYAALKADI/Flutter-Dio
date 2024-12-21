
import 'package:dio/dio.dart';

import 'apiconsumer.dart';
import 'apiinterceptor.dart';
import 'endpoints.dart';
import 'exceptions/apiexceptions.dart';


class Dioconsumer extends Apiconsumer {
  final Dio dio;

  Dioconsumer({required this.dio}) {
    dio.options.baseUrl = Endpoints.baseUrl;
    dio.interceptors.add(Apiinterceptor());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
  }

  @override
  Future delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryparameters,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.delete(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: queryparameters);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future get(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryparameters,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.get(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: queryparameters);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryparameters,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.post(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: queryparameters);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryparameters,
    bool isFormData = false,
  }) async {
    try {
      final response = await dio.put(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: queryparameters);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }
}
