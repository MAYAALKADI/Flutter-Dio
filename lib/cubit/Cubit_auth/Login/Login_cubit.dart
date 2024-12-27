import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../helper_with_dio/cash_helper.dart';
import '../../../helper_with_dio/dio_helper.dart';
import '../../../myImport.dart';
import '../../../screens/register_screen.dart';
import '../../../screens/store_screen.dart';
import 'Login_state.dart';

class UserCubitLogin extends Cubit<LoginUserState> {
  UserCubitLogin() : super(LoginUserState());
  static UserCubitLogin get(context) => BlocProvider.of(context);

  GlobalKey<FormState> formKeyInLogin = GlobalKey();
  TextEditingController phoneControllerInLoginBody = TextEditingController();
  TextEditingController passwordControllerInLoginBody = TextEditingController();

  bool passwordVisibale = false;
  String? password;
  int? phone;
  String?token;

  void getToRegScreen({ required context}){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) =>  RegScreen()));}


  void getToStoreScreen({ required context}){

    Navigator.push(context,
        MaterialPageRoute(builder: (context) =>const StoreScreen()));

  }

  Future<void> login({
    required context,
    required String phoneNumber,
    required String password,
  }) async {
    print("LoginLoadingState");

    emit(LoginLoadin());
    DioHelper.myPost(
      endPont:"login" ,
      myData:{
        "phone": phoneNumber,
        "password": password

      } ,

    ).then((value) async {
      int a = value.statusCode!;
      print(value);
      print(a);

      if (value.statusCode == 200) {

        CashHelper.putUser(userToken: "");
        print("Token is ${CashHelper.getUserToken()}");

// CashHelper.putUser(userToken: userModel.user.token);
        Future.delayed(const Duration(seconds: 2), () {
          getToStoreScreen(context:context );
        });
        emit(LoginSuccess());
      }

      if (value.statusCode == 401) {
// moduleLogin = ModuleLoginField.formJson(value.data);
        print("401");
        emit(LoginFailure(errMessage: "401"));
      }
    }).catchError((error) {

      print('login error: ${error.toString()}');
      emit(LoginFailure(errMessage: ""));
    });
  }
  void passwordVisibaleCHANGE (){

    passwordVisibale=!passwordVisibale;
    emit(PasswordVisibale());

  }
}
/*Future login(String phone,String pass)async{
    http.Response response = await http.post(Uri.parse('http://127.0.0.1:8000/api/login'),
     body: <String,String>{
       'phone':phone,
       'password':pass,
     }
     );
     if(response.statusCode == 200){
       var js = jsonDecode(response.body);
       String token = js['token'];
       print('token is $token');
     }else{
       print('Sorry');
     }

   }
   final PhoneController = TextEditingController();
   final PasswordController = TextEditingController();

    setState(() {
    passwordVisibale=!passwordVisibale;
    });
*/