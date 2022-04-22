


import 'package:flutter/material.dart';
import 'package:peliculas/screens/screens.dart';

class loginpage extends StatefulWidget {
  static String id = "Loginpage";

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final user = TextEditingController();
  final password = TextEditingController();
  String usuario = '';
  String contra = '';
  String us= '218036142';
  String cot= '218036142';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Flexible(
            child: Image.network(
             "https://st3.depositphotos.com/1064045/18818/i/450/depositphotos_188188462-stock-photo-unusual-cinema-concept-3d-illustration.jpg",
                height: 400),
          ),
          SizedBox(height: 15.0),
          _userTextField(),
          SizedBox(height: 15.0),
          _passwordTextFiled(),
          SizedBox(height: 15.0),
          _bottonLogin(),
        ]),
      )),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          controller: user,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'Usuario',
            labelText: 'Usuario',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTextFiled() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          controller: password,
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'Password',
            labelText: 'Password',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text(
              'Iniciar Sesion ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10,
          color: Colors.blue,
          onPressed: () {
            usuario = user.text;
            contra = password.text;
            if (usuario ==us && contra== cot) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            } 
          });
    });
  }
}
