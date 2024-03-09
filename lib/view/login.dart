// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:culture_app/utils/global.colors.dart';
import 'package:flutter/material.dart';

import './forgot_password.dart';
import 'signup/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              colors: [Color(0xFF3E0976), Color(0xFF934FBD)],
            ),
          ),
          child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 55),
                child: Text(
                  'Bem-Vindo ao \n Projeto!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: GlobalColors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              )),
        ),
        Padding(
            padding: EdgeInsets.only(
              top: 200,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80)),
                color: GlobalColors.black,
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 40, top: 100, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: GlobalColors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        height: 60,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              color: GlobalColors.white, fontSize: 18),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 9),
                            prefixIcon: Padding(
                              padding:
                                  EdgeInsets.only(left: 10, top: 1.5, right: 2),
                              child: Icon(
                                Icons.email,
                                color: GlobalColors.mainColor,
                                size: 25,
                              ),
                            ),
                            hintText: 'Digite seu email',
                            hintStyle: TextStyle(
                                color: GlobalColors.hintTextColor,
                                fontSize: 18),
                          ),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: GlobalColors.white),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        height: 60,
                        child: TextField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(
                              color: GlobalColors.white, fontSize: 18),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 9),
                            prefixIcon: Padding(
                              padding:
                                  EdgeInsets.only(left: 10, top: 1.5, right: 2),
                              child: Icon(
                                Icons.key,
                                color: GlobalColors.mainColor,
                                size: 25,
                              ),
                            ),
                            hintText: 'Digite sua senha',
                            hintStyle: TextStyle(
                                color: GlobalColors.hintTextColor,
                                fontSize: 18),
                          ),
                        )),
                    SizedBox(height: 15),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ForgotPasswordScreen()));
                        },
                        child: Row(children: [
                          Spacer(),
                          Text(
                            'Esqueci minha senha!',
                            style: TextStyle(
                              color: GlobalColors.hintTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ])),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: Container(
                        height: 53,
                        width: 200,
                        decoration: BoxDecoration(
                            color: GlobalColors.mainColor,
                            border: Border.all(color: GlobalColors.mainColor),
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
                    )),
                    SizedBox(
                      height: 80,
                    ),
                    Center(
                      child: Text(
                        'Não tem uma conta?',
                        style: TextStyle(
                            color: GlobalColors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: Container(
                        height: 53,
                        width: 200,
                        decoration: BoxDecoration(
                            color: GlobalColors.hintTextColor,
                            border:
                                Border.all(color: GlobalColors.hintTextColor),
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                          child: Text(
                            'CADASTRE-SE',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: GlobalColors.white),
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}
