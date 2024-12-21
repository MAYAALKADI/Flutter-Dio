

import '../../../../core/class/Moujaas.dart';
import '../../../../linkapi.dart';

class SignupData {
  Moujaas moujaas;
  SignupData(this.moujaas);

  postdata(String first_name, String last_name, String password_confirmation,
      String password, String phone_number) async {
    var response = await moujaas.post(AppLink.signup, {
      "first_name": first_name,
      "last_name": last_name,
      "password": password,
      "password_confirmation": password_confirmation,
      "phone_number": phone_number,
    });
    return response.fold((l) => l, (r) => r);
  }
}
