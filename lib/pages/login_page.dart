// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_sindrome_down/pages/home_page.dart';
import 'package:projeto_sindrome_down/routes/routes.dart';
import 'package:projeto_sindrome_down/utils/appcolors.dart';
import 'package:projeto_sindrome_down/utils/dimensions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Center(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Center(
                child: Text(
                  'Faça Login',
                  style: TextStyle(
                    color: AppColors.yellowColor,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 100),
            Form(
              key: _formKey,
              child: SizedBox(
                width: Dimensions.width350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                          25,
                          0,
                          10,
                          0,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Usuário',
                              suffixIcon: Padding(
                                child: Icon(Icons.person),
                                padding: EdgeInsets.all(5),
                              ),
                              border: InputBorder.none),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Usuário';
                            } else {
                              //runtime = value;
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                          25,
                          0,
                          10,
                          0,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            border: InputBorder.none,
                            suffixIcon: Padding(
                              child: Icon(Icons.password),
                              padding: EdgeInsets.all(5),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Senha';
                            } else {
                              //runtime = value;
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Login efetuado com sucesso!')),
                            );

                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          }
                        },
                        child: Container(
                          width: 450,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.yellowColor,
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                'Entrar',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: Dimensions.width350,
                child: Center(
                  child: Text(
                    'Esqueceu sua senha?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: AppColors.orangeColor,
            ),
            GestureDetector(
              onTap: () {
                Get.offNamed(Routes.registerUserScreen);
              },
              child: SizedBox(
                width: Dimensions.width350,
                child: Center(
                  child: Text(
                    'Faça seu cadastro',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
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
