import 'package:flutter/material.dart';
import 'package:hello_world/regra_negocio/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                //Duas formas para aredondar a imagem de perfil

                // currentAccountPicture: ClipRRect(
                //   borderRadius: BorderRadius.circular(40),
                //   child: Image.asset('assets/images/me.jpeg'),
                // ),
                currentAccountPicture: ClipOval(
                  child: Image.asset('assets/images/me.jpeg'),
                ),
                accountName: Text('Gabriel Lopes'),
                accountEmail: Text('gblteste@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/login');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Whatsapp',
          style: TextStyle(color: Colors.grey[300]),
        ),
        backgroundColor: Colors.grey[800],
        actions: <Widget>[
          Switch(
              value: AppController.appController.isDarkTheme,
              onChanged: (value) {
                setState(() {
                  AppController.appController.changeTheme();
                });
              })
        ],
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: 40,
        color: Colors.grey[800],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.camera_alt, color: Colors.grey[300]),
            Text('CHATS', style: TextStyle(color: Colors.grey[300])),
            Text('STATUS', style: TextStyle(color: Colors.grey[300])),
            Text('CALLS', style: TextStyle(color: Colors.grey[300])),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.note),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
