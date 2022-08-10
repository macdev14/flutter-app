// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: SizedBox(
                  width: 200,
                  child: Image.asset(
                    'assets/images/logo.jpeg',
                  ),
                ),
              ),
              Container(
                height: 50,
              ),
              TextField(
                onChanged: (text) {
                  email = text;
                  print(text);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (text) {
                  password = text;
                  print(text);
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  email == 'lauro@gmail.com' && password == '123'
                      ? Navigator.of(context).pushReplacementNamed('/home')
                      : print('Login inválido!!!');
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/background.jpeg',
                fit: BoxFit.cover)),
        _body(),
      ],
    ));
  }
}
