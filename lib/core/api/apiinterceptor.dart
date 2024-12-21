import 'package:dio/dio.dart';

class Apiinterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept-Language'] = "en";
    super.onRequest(options, handler);
  }
}
