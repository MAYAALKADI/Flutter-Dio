class UserState {}

final class UserInitial extends UserState{}
final class SinInSuccess extends UserState{}
final class SinInLoadin extends UserState{}
final class SinInFailure extends UserState{
  final String errMessage;

  SinInFailure({required this.errMessage});
}