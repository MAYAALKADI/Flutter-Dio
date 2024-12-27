import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../helper_with_dio/cash_helper.dart';
import '../../../helper_with_dio/dio_helper.dart';
import '../../../myImport.dart';
import '../../../screens/register_screen.dart';
import '../../../screens/store_screen.dart';
import 'Register_state.dart';

class UserCubitReg extends Cubit<RegisterState> {
  UserCubitReg() : super(RegisterState());
  static UserCubitReg get(context) => BlocProvider.of(context);

  GlobalKey<FormState> formKeyInLogin = GlobalKey();
  TextEditingController FirstNameControllerInLoginBody = TextEditingController();
  TextEditingController LastNameControllerInLoginBody = TextEditingController();
  TextEditingController phoneControllerInLoginBody = TextEditingController();
  TextEditingController passwordControllerInLoginBody = TextEditingController();
  TextEditingController passwordConfirmationControllerInLoginBody = TextEditingController();
  TextEditingController LocationControllerInLoginBody = TextEditingController();


  bool passwordVisibale = false;
  String? first_name;
  String? last_name;
  int? phone;
  String? password;
  String? password_confirmation;
  String? location;
  String?token;

  void getToRegScreen({ required context}){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) =>  RegScreen()));}


  void getToStoreScreen({ required context}){

    Navigator.push(context,
        MaterialPageRoute(builder: (context) =>const StoreScreen()));

  }

  Future<void> register({
    required context,
    required String fisrtName,
    required String lastName,
    required String phoneNumber,
    required String password,
    required String passwordConfirme,
    required String location,
  }) async {
    print("LoginLoadingState");

    emit(RegisterLoadin());
    DioHelper.myPost(
      endPont:"register" ,
      myData:{
        "first_name": fisrtName,
        "last_name": lastName,
        "phone": phoneNumber,
        "password": password,
        "password_confirmation": passwordConfirme,
        "location":location ,
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
        emit(RegisterSuccess());
      }

      if (value.statusCode == 401) {
// moduleLogin = ModuleLoginField.formJson(value.data);
        print("401");
        emit(RegisterFailure(errMessage: "401"));
      }
    }).catchError((error) {

      print('login error: ${error.toString()}');
      emit(RegisterFailure(errMessage: ""));
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

















// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:untitled17/cubit/user_state.dart';
// import '../../../core/api/api_consumer.dart';
// import '../../../core/api/end_ponits.dart';
// import '../../../core/errores/exceptions.dart';
//
// class UserCubit extends Cubit<UserState>{
//   UserCubit(this.api) : super(UserInitial());
//   final ApiConsumer api;
//
//   GlobalKey<FormState> sinInFormKey = GlobalKey();
//
//   TextEditingController sinInPhone = TextEditingController();
//   TextEditingController sinInPassowrd = TextEditingController();
//
//   GlobalKey<FormState> sinUpFormKey = GlobalKey();
//
// // XFile? profilePic;
//   TextEditingController sinUpName = TextEditingController();
//   TextEditingController sinUpPhoneNumber = TextEditingController();
//   TextEditingController sinUpEmail = TextEditingController();
//   TextEditingController sinUpPassowrd = TextEditingController();
//   TextEditingController sinUpConfirmPassowrd = TextEditingController();
//   sinIn() async
//   {
//     try {
//       emit(SinInLoadin());
//       final response = await api.post(EndPoint.signIn,
//           data: {
//             ApiKey.phone: sinInPhone.text,
//             ApiKey.password: sinInPassowrd,
//           }
//       );
//       emit(SinInSuccess());
//     }on ServerException catch(e){
//       emit(SinInFailure(errMessage: e.errorModel.errorMessage));
//     }
//   }
// }