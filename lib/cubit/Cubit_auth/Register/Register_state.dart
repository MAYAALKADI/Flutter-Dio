class RegisterState {}

final class RegisterInitial extends RegisterState{}
final class RegisterSuccess extends RegisterState{}
final class RegisterLoadin extends RegisterState{}
final class RegisterFailure extends RegisterState{
  final String errMessage;

  RegisterFailure({required this.errMessage});
}