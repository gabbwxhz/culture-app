// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:culture_app/utils/global.colors.dart';
import 'package:flutter/material.dart';

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
                padding: EdgeInsets.only(left: 50, top: 100, right: 50),
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
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: GlobalColors.white),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.only(left: 15, bottom: 3)),
                      ),
                    )
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}
