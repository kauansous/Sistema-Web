// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, must_be_immutable, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:residencias_ufc/components/Login/input.dart';
import 'package:residencias_ufc/routes/routes.dart';

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
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 104,
              ),
              Text(
                "Bem-vindo de volta!",
                style: GoogleFonts.epilogue(fontSize: 32, fontWeight: FontWeight.w600,color: Colors.black),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Digite suas credenciais para acessar o sistema",
                style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.black.withOpacity(0.6)),
              ),
              SizedBox(
                height: 56,
              ),
              Container(
                width: 480,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFF4F2F2),
                ),
                padding: EdgeInsets.all(40),
                child: Column(
                  children: [
                    Input(
                      name: "Usuário",
                      controller: UserController,
                      isPassword: false,
                      boolPrefixIcon: true,
                      boolSufixIcon: false,
                      textError: "Informe o usuário",
                      prefixIcon: "assets/Images/Property 1=user.png",
                      width: 400,
                      height: 16, 
                      hintText: "Digite seu usuário", 
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Input(
                      name: "Senha",
                      controller: PasswordController,
                      isPassword: true,
                      boolPrefixIcon: true,
                      boolSufixIcon: true,
                      textError: "Informe a senha",
                      prefixIcon: "assets/Images/lock.png",
                      width: 400,
                      height: 16, 
                      hintText: "Digite sua senha", 
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          "Esqueci minha senha",
                          style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    SizedBox(
                      width: 400,
                      height: 49,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF444343),
                        ),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.of(context)
                            .pushNamed(Routes.Home);
                          }
                        },
                        child: Text(
                          "Entrar",
                          style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
