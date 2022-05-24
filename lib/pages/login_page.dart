// ignore_for_file: prefer_const_constructors, unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_sindrome_down/auth/authentication.dart';
import 'package:projeto_sindrome_down/routes/routes.dart';
import 'package:projeto_sindrome_down/utils/appcolors.dart';
import 'package:projeto_sindrome_down/utils/dimensions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _email;
  String? _password;

  bool _passwordVisible = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(90),
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
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      suffixIcon: Padding(
                        child: Icon(Icons.email),
                        padding: EdgeInsets.all(5),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'O e-mail é obrigatório';
                      } else {
                        _email = value;
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: Padding(
                        child: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        padding: EdgeInsets.all(5),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'A senha é obrigatória';
                      } else {
                        _password = value;
                      }
                      return null;
                    },
                    onChanged: (value) => _password = value,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Authentication()
                              .signIn(email: _email!, password: _password!)
                              .then((result) {
                            if (result == null) {
                              Get.offNamed(Routes.homeScreen);
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(
                                  result,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ));
                            }
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        primary: AppColors.yellowColor,
                        fixedSize: Size(
                          300,
                          Dimensions.height45,
                        ),
                      ),
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
              Center(
                child: Divider(
                  color: Colors.white.withOpacity(0.5),
                ),
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
          )
        ],
      ),
    );
  }
}
