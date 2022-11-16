// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, must_be_immutable, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:residencia_ufc/components/input.dart';
import 'package:residencia_ufc/routes/routes.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController UserController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ignore: prefer_const_constructors
              Text(
                "Logo",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                // ignore: prefer_const_constructors
                child: Text(
                  "Bem-vindo de volta!",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Input(
                          name: "Usuário",
                          controller: UserController,
                          isPassword: false,
                          boolPrefixIcon: true,
                          boolSufixIcon: false,
                          textError: "Informe o usuário",
                          prefixIcon: Icons.person,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Input(
                          name: "Senha",
                          controller: PasswordController,
                          isPassword: true,
                          boolPrefixIcon: true,
                          boolSufixIcon: true,
                          textError: "Informe a senha",
                          prefixIcon: Icons.lock,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Text(
                              "Esqueci minha senha",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 450,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 2, 40, 98),
                            ),
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                Navigator.of(context)
                                .pushReplacementNamed(Routes.Home);
                              }
                            },
                            child: Text(
                              "Entrar",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
