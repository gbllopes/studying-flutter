import 'package:flutter/foundation.dart';

class LoginController extends ChangeNotifier {
  static LoginController loginController = LoginController();

  String email = 'gblteste@gmail.com';
  String password = '123';
  bool logged = false;

  bool isLogged(emailUser, passwordUser) {
    if (email == emailUser && password == passwordUser) {
      return true;
    }
    return true;
    // return false;
  }
}
