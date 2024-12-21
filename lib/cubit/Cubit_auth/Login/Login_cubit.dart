import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled17/cubit/user_state.dart';
import '../../../core/api/api_consumer.dart';
import '../../../core/api/end_ponits.dart';
import '../../../core/errores/exceptions.dart';

class UserCubit extends Cubit<UserState>{
  UserCubit(this.api) : super(UserInitial());
  final ApiConsumer api;

  GlobalKey<FormState> sinInFormKey = GlobalKey();

  TextEditingController sinInPhone = TextEditingController();
  TextEditingController sinInPassowrd = TextEditingController();

  GlobalKey<FormState> sinUpFormKey = GlobalKey();

// XFile? profilePic;
  TextEditingController sinUpName = TextEditingController();
  TextEditingController sinUpPhoneNumber = TextEditingController();
  TextEditingController sinUpEmail = TextEditingController();
  TextEditingController sinUpPassowrd = TextEditingController();
  TextEditingController sinUpConfirmPassowrd = TextEditingController();
  sinIn() async
  {
    try {
      emit(SinInLoadin());
      final response = await api.post(EndPoint.signIn,
          data: {
            ApiKey.phone: sinInPhone.text,
            ApiKey.password: sinInPassowrd,
          }
      );
      emit(SinInSuccess());
    }on ServerException catch(e){
      emit(SinInFailure(errMessage: e.errorModel.errorMessage));
    }
  }
}