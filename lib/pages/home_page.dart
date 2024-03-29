// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_sindrome_down/auth/authentication.dart';
import 'package:projeto_sindrome_down/routes/routes.dart';
import 'package:projeto_sindrome_down/widgets/big_card_widget.dart';
import '../utils/dimensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8ECAE6),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Dimensions.height10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              Dimensions.radius30,
                            ),
                          ),
                          prefixIcon: Icon(Icons.search),
                          labelText: 'Search',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          filled: true,
                          fillColor: Colors.blue.shade100,
                        ),
                      ),
                    ),
                    SizedBox(width: Dimensions.width20),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.aboutScreen);
                      },
                      icon: const Icon(Icons.info),
                    ),
                    IconButton(
                      onPressed: () {
                        Authentication().signOut().then(
                              (value) => Get.offNamed(Routes.initial),
                            );
                      },
                      icon: Icon(
                        Icons.logout,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Row(
                children: [
                  // Text(
                  //   'Todas ',
                  //   style: TextStyle(
                  //     fontSize: Dimensions.font18,
                  //     fontFamily: 'Roboto',
                  //     fontWeight: FontWeight.normal,
                  //   ),
                  // ),
                  Text(
                    'Temas',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: Dimensions.font18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        BigCardWidget(
                          id: 1,
                          image: 'images/sindrome_down.jpeg',
                          title: 'O que é Síndrome de Down?',
                        ),
                        BigCardWidget(
                          id: 2,
                          image: 'images/cuidados.jpeg',
                          title: 'Cuidados Gerais',
                        ),
                        BigCardWidget(
                          id: 3,
                          image: 'images/logo.jpg',
                          title: 'Recomendações',
                        ),
                        BigCardWidget(
                          id: 4,
                          image: 'images/covid.jpg',
                          title: 'Síndrome de Down x COVID-19',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
