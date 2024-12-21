

import '../class/requeststatus.dart';

handlingApi(response) {
  if (response is Requeststatus) {
    return response;
  } else {
    return Requeststatus.success;
  }
}
