import 'package:flutter/foundation.dart';

class AppController extends ChangeNotifier {
  bool isDarkTheme = true;

  static AppController appController = AppController();

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
