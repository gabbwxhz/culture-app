// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:culture_app/utils/global.colors.dart';
import 'package:flutter/material.dart';

import 'view/login.dart';
import 'view/signup.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            colors: [Color(0xFF3E0976), Color(0xFF934FBD)],
          ),
        ),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 150.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 400,
                  height: 250,
                )),
            SizedBox(
              height: 50,
            ),
            Text(
              "Bem-Vindo!",
              style: TextStyle(
                  fontSize: 40,
                  color: GlobalColors.white,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                height: 53,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'ENTRAR',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: GlobalColors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupScreen()));
              },
              child: Container(
                height: 53,
                width: 300,
                decoration: BoxDecoration(
                    color: GlobalColors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'CADASTRAR',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: GlobalColors.black),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
