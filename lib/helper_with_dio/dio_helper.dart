import 'package:dio/dio.dart';
//import 'package:untitled2/helper_with_dio/cash_helper.dart';

class DioHelper {
  static late Dio dio;
  static String token ="8|5YFHpu3tth0tPCHKvbR2PQH1RbvXCaSRoDKrRUoP9bd1c344";
    //  CashHelper.getUserToken()! != "" ? CashHelper.getUserToken()! : "";
  //CashHelper cashHelper = CashHelper();

  static init() {
    print("Dio");
    dio = Dio(
      BaseOptions(
        baseUrl: "http://127.0.0.1:8000/api/",
        // connectTimeout:Duration(seconds: 30) ,
        // receiveTimeout: Duration(seconds: 30) ,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> myPost({
    required String endPont,
    required myData,
  }) async {
    return
        await dio.post('$endPont',
        data: myData,
        options: Options(
            headers: {
              'Authorization': 'Bearer  $token',
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }

  static Future<Response> myGet({required String bath}) async {
    //books
    return await dio.get(bath,
        options: Options(
            headers: {
              'Authorization': 'Bearer $token',
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return true;
            }));
  }



  static Future<Response> myDelete({
    required String endPont,
    required myData,
  }) async {
    return await dio.delete('$endPont',
        data: myData,
        options: Options(
            headers: {
              'Authorization': 'Bearer  $token',
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }



  static Future<Response> myPut({
    required String endPont,
    required myData,
  }) async {
    return await dio.put('$endPont',
        data: myData,
        options: Options(
            headers: {
              'Authorization': 'Bearer  $token',
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }
  /// TODO
  // ######################################

  static Future<Response> register({
    required String name,
    required String age,
    required String password,
    required String email,
  }) async {
    print("register_dio");

    return await dio.post('Register',
        data: {
          'name': name,
          'age': age,
          'password': password,
          'email': email,
        },
        options: Options(
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return true;
            }));
  }

  static Future<Response> login(
      {required String email, required String password}) async {
    return await dio.post('Login',
        data: {'email': email, 'password': password},
        options: Options(
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }

  static Future<Response> lost({required String email}) async {
    return await dio.post('Login',
        data: {'email': email},
        options: Options(
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }

  static Future<Response> sure({required String code}) async {
    int codeInt = int.tryParse(code) ?? 0;

    return await dio.post('code/',
        data: {"code": codeInt},
        options: Options(
            headers: {
              'Authorization': 'Bearer ',
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }



  static Future<Response> addToLibrary({required String id}) async {
    return await dio.post('library/add',
        data: {"book_id": id},
        options: Options(
            headers: {
              'Authorization': 'Bearer  $token',
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }

  ///

  static Future<Response> myPostToAddNote({
    required String endPont,
    required myData,
  }) async {
    return await dio.post('$endPont',
        data: myData,
        options: Options(
            headers: {
              'Authorization': 'Bearer  $token',
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }




}

