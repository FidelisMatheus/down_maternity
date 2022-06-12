// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_sindrome_down/auth/authentication.dart';
import 'package:projeto_sindrome_down/routes/routes.dart';
import 'package:projeto_sindrome_down/utils/appcolors.dart';
import 'package:projeto_sindrome_down/utils/dimensions.dart';

class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({Key? key}) : super(key: key);

  @override
  State<RegisterUserPage> createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  final _formKey = GlobalKey<FormState>();

  String? email;
  String? mobilephone;
  String? password;
  String? name;
  bool _obscureText = false;

  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: AppColors.blueColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(
                      right: Dimensions.width350,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Get.toNamed(Routes.initial);
                      },
                      icon: Icon(
                        Icons.chevron_left_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Faça seu cadastro',
                      style: TextStyle(
                        color: AppColors.yellowColor,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 350,
                    child: Text(
                      'Este aplicativo vai te dar dicas importantes e você poderá ver seu progresso com o aprendizado.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: Dimensions.width350,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nome',
                          labelStyle: TextStyle(color: AppColors.textColor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'O nome é obrigatório';
                          } else {
                            name = value;
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'E-mail',
                          labelStyle: TextStyle(color: AppColors.textColor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'O e-mail é obrigatório';
                          } else {
                            email = value;
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Celular',
                          labelStyle: TextStyle(color: AppColors.textColor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'O celular é obrigatório';
                          } else {
                            mobilephone = value;
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: !_obscureText,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle: TextStyle(color: AppColors.textColor),
                          suffixIcon: Padding(
                            child: IconButton(
                              icon: Icon(
                                // Based on passwordVisible state choose the icon
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            padding: EdgeInsets.all(5),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'A senha é obrigatória';
                          } else {
                            password = value;
                          }
                          return null;
                        },
                        onChanged: (value) => password = value,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          onChanged: (_) {
                            setState(() {
                              agree = !agree;
                            });
                          },
                          value: agree,
                        ),
                        Flexible(
                          child: Text(
                              'Ao criar uma conta, concordo com os Termos e Condições e a Política de Privacidade.'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();

                          Authentication()
                              .signUp(
                            email: email!,
                            password: password!,
                            name: name!,
                            mobilephone: mobilephone!,
                          )
                              .then((result) {
                            if (result == null) {
                              Get.offNamed(Routes.initial);
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
                        primary: AppColors.blueColor,
                        fixedSize: Size(
                          300,
                          Dimensions.height45,
                        ),
                      ),
                      child: Text(
                        'Salvar',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
