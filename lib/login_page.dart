import 'package:flutter/material.dart';
import 'package:hello_world/regra_negocio/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email;
  late String password;

  Widget _body() {
    return (SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Image.asset(
                'assets/images/wpp-logo-white.png',
                width: 25,
              ),
              Container(height: 50),
              Card(
                color: Colors.teal[900],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (textEmail) {
                          email = textEmail;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email', border: OutlineInputBorder()),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (textPw) {
                          password = textPw;
                        },
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (LoginController.loginController
                              .isLogged(email, password)) {
                            Navigator.of(context).pushReplacementNamed('/home');
                          }
                        },
                        child: Text('Entrar'),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: Image.asset(
              'assets/images/image-background.jpg',
              fit: BoxFit.cover,
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          _body(),
        ],
      ),
    );
  }
}
