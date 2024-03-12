// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers

import 'package:culture_app/utils/global.colors.dart';
import 'package:flutter/material.dart';

import 'package:email_validator/email_validator.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import './forgot_password.dart';
import 'signup/signup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _keyForm = GlobalKey<FormState>();

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
                padding: EdgeInsets.only(top: 60),
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
                padding: EdgeInsets.only(left: 40, top: 90, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Form(
                      key: _keyForm,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                                color: GlobalColors.white, fontSize: 18),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              contentPadding: EdgeInsets.only(
                                top: 35,
                              ),
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    left: 10, top: 1.5, right: 2),
                                child: Icon(
                                  Icons.email_outlined,
                                  color: GlobalColors.mainColor,
                                  size: 25,
                                ),
                              ),
                              hintText: 'Digite seu e-mail',
                              hintStyle: TextStyle(
                                color: GlobalColors.hintTextColor,
                                fontSize: 18,
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "O campo é obrigatório";
                              } else if (!EmailValidator.validate(value)) {
                                return "Insira um e-mail válido";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  color: GlobalColors.white, fontSize: 18),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide(
                                        style: BorderStyle.solid, width: 59)),
                                contentPadding: EdgeInsets.only(
                                  top: 35,
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, top: 1.5, right: 2),
                                  child: Icon(
                                    Icons.key_outlined,
                                    color: GlobalColors.mainColor,
                                    size: 25,
                                  ),
                                ),
                                hintText: 'Digite sua senha',
                                hintStyle: TextStyle(
                                  color: GlobalColors.hintTextColor,
                                  fontSize: 18,
                                ),
                              ),
                              validator: FormBuilderValidators.compose([
                                FormBuilderValidators.required(
                                    errorText: "O campo é obrigatório"),
                                FormBuilderValidators.minLength(8,
                                    errorText:
                                        "A senha deve ter pelo menos 8 caracteres."),
                                FormBuilderValidators.match(
                                    r'(?=.*?[#?!@$%^&*-])',
                                    errorText:
                                        "A senha deve incluir pelo menos um caractere especial."),
                                FormBuilderValidators.match(r'(?=.*?[0-9])',
                                    errorText:
                                        "A senha deve incluir pelo menos um número."),
                                FormBuilderValidators.match(r'(?=.*?[A-Z])',
                                    errorText:
                                        "A senha deve incluir pelo menos uma letra maiúscula."),
                                FormBuilderValidators.match(r'(?=.*?[a-z])',
                                    errorText:
                                        "A senha deve incluir pelo menos uma letra minúscula."),
                              ]))
                        ],
                      ),
                    ),
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
                              fontSize: 17,
                            ),
                          ),
                        ])),
                    SizedBox(
                      height: 45,
                    ),
                    Center(
                        child: GestureDetector(
                      onTap: () {
                        if (_keyForm.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()));
                        }
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
