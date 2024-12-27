class  LoginUserState {}

final class UserInitial extends LoginUserState{}
final class  LoginSuccess extends LoginUserState{}
final class  LoginLoadin extends LoginUserState{}
final class  PasswordVisibale  extends LoginUserState{}
final class  LoginFailure extends LoginUserState{
  final String errMessage;

  LoginFailure({required this.errMessage});
}