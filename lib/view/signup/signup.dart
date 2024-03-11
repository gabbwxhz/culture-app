// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import '../../utils/global.colors.dart';

import './visitor_signup.dart';
import './expositor_signup.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                  padding: EdgeInsets.only(top: 90),
                  child: Text(
                    'Cadastro',
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExpositorSignupScreen()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: GlobalColors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 170,
                        width: 170,
                        child: Image.asset(
                          'assets/images/speaker.ico',
                          width: 130,
                          height: 130,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Sou um expositor',
                      style: TextStyle(color: GlobalColors.white, fontSize: 20),
                    ),
                    SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VisitorSignupScreen()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: GlobalColors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 170,
                        width: 170,
                        child: Image.asset(
                          'assets/images/user.ico',
                          width: 110,
                          height: 110,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Sou um visitante',
                      style: TextStyle(color: GlobalColors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
