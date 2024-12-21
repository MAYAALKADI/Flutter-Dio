class LoginState {}

final class LoginInitial extends LoginState{}
final class LoginSuccess extends LoginState{}
final class LoginLoadin extends LoginState{}
final class LoginFailure extends LoginState{
  final String errMessage;

  LoginFailure({required this.errMessage});
}