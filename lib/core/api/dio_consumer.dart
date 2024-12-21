import 'package:dio/dio.dart';
import '../errores/exceptions.dart';
import 'api_consumer.dart';
import 'api_interceptors.dart';
import 'end_ponits.dart';

class DioConsumer extends ApiConsumer{
  final Dio dio;
  DioConsumer({required this.dio}){
    dio.options.baseUrl = EndPoint.baseUrl;
    dio.interceptors.add(ApiInterceptor());
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
  Future delete(String path, {
    dynamic? data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  })async {
    try{
      final response = await dio.delete(
        path,
        data:isFromData?FormData.fromMap(data): data,
        queryParameters: queryParameters,
    );
      return response.data ;
    }on Exception catch (e){
      handleDioExceptions(e);
    }

  }

  @override
  Future get(String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  })async {
   try{
     final response =await dio.get(
         path,
       data:isFromData?FormData.fromMap(data): data,
       queryParameters: queryParameters,
     );
     return response.data;
   }on DioException catch (e){
     handleDioExceptions(e);
   }
  }

  @override
  Future patch(
      String path, {
        dynamic data,
        Map<String, dynamic>? queryParameters,
        bool isFromData = false,
      })async {
    try{
      final response =await dio.get(
        path,
        data:isFromData?FormData.fromMap(data): data,
        queryParameters: queryParameters,
      );
      return response.data;
    }on DioException catch (e){
      handleDioExceptions(e);
    }
  }

  @override
  Future post(
      String path, {
        dynamic data,
        Map<String, dynamic>? queryParameters,
        bool isFromData = false,
      })async {
    try{
      final response =await dio.get(
        path,
        data:isFromData?FormData.fromMap(data): data,
        queryParameters: queryParameters,
      );
      return response.data;
    }on DioException catch (e){
      handleDioExceptions(e);
    }
  }
  
}