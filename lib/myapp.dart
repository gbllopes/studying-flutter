import 'package:flutter/material.dart';
import 'package:hello_world/regra_negocio/app_controller.dart';
import 'package:hello_world/home_controller.dart';
import 'package:hello_world/home_widget_stt_ful.dart';
import 'package:hello_world/login_page.dart';
import 'package:hello_world/regra_negocio/login_controller.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.appController,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                brightness: AppController.appController.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            home: HomeController(child: const LoginPage()),
            initialRoute: '/login',
            routes: {
              '/login': (context) => LoginPage(),
              '/home': (context) => HomePage(),
            },
          );
        });
  }
}
