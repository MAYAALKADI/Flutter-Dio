

class LoginUserField {
  late final String message;
  late final Errors errors;

  LoginUserField({
    required this.message,

    required this.errors,
  });

  factory LoginUserField.formJson(dynamic jsonData) {
    return LoginUserField(
      message: jsonData['message'],
        errors:Errors.formJson( jsonData['errors'])

    );
  }
}

class Errors{
  late final String phone;
  late final String password;

  Errors({
    required this.phone,
    required this.password,

  });
  factory Errors.formJson(dynamic jsonData) {
    return Errors(
      phone: jsonData['phone'],
      password: jsonData['password'],

    );
  }


}


























class LoginUser {
  final String message;
  final User user;
  final String token;


  LoginUser({required this.message, required this.user, required this.token});
  factory LoginUser.formJson(dynamic jsonData) {
    return LoginUser(
      message: jsonData['message'],
      token: jsonData['token'],
      user: User.formJson( jsonData['user'])
      ,



    );
  }




}

class User {
  final int id;
  final String first_name;
  final String last_name;
  final String phone;
  final String? profileImage;
  final String location;
  final String? fcmToken;



  User({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.phone,
    this.profileImage,
    required this.location,
    this.fcmToken,

  });


  factory User.formJson(dynamic jsonData) {
    return User(
      id: jsonData['id'],
      first_name: jsonData['first_name'],
      last_name: jsonData['last_name'],
      phone: jsonData['phone'],

      profileImage: jsonData['profile_image'],
      location: jsonData['location'],
      fcmToken: jsonData['fcm_token'],


    );
  }



}
