
import '../../../../core/class/Moujaas.dart';
import '../../../../linkapi.dart';


class Logindata {
  Moujaas moujaas;
  Logindata(this.moujaas);

  postdata(String password, String phone_number) async {
    var response = await moujaas.post(AppLink.login, {
      "password": password,
      "phone_number": phone_number,
    });
    return response.fold((l) => l, (r) => r);
  }
}
