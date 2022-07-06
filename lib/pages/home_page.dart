// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:projeto_sindrome_down/auth/authentication.dart';
import 'package:projeto_sindrome_down/model/topic.dart';
import 'package:projeto_sindrome_down/routes/routes.dart';
import 'package:projeto_sindrome_down/utils/appcolors.dart';
import 'package:projeto_sindrome_down/widgets/big_card_calendar_widget.dart';
import 'package:projeto_sindrome_down/widgets/big_card_widget.dart';
import '../utils/dimensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var collection = FirebaseFirestore.instance.collection('users');
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final List<Topic> _nebulae = [];

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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Down Maternity',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.width20,
                    ),
                    IconButton(
                      onPressed: () {
                        showSearch(
                          context: context,
                          delegate: MyDelegate(_nebulae),
                        );
                      },
                      icon: Icon(Icons.search),
                    ),
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
                        BigCardCalendarWidget(
                          image: 'images/calendartopic.jpg',
                          title: 'Calendário Vacinal',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.height20),
              Text(
                'Seu progresso ',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: Dimensions.font18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: Dimensions.height20),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDelegate extends SearchDelegate {
  final List<Topic> _nebulae;

  MyDelegate(this._nebulae);

  var text = '';
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        onPressed: () => close(
          context,
          null,
        ),
        icon: Icon(Icons.arrow_back),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            query.isEmpty
                ? close(
                    context,
                    null,
                  )
                : query = '';
          },
          icon: Icon(Icons.clear),
        ),
      ];

//aqui vou estilzar a página com as informações buscadas
  @override
  Widget buildResults(BuildContext context) => Container(
        color: AppColors.mainColor,
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(
                        3.0,
                        3.0,
                      ),
                      blurRadius: 4.0,
                      spreadRadius: 3.0,
                    ), //Bo/BoxShadow
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      query,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Text(
                        text,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Topic> suggestions = _nebulae.where((searchResult) {
      final result = searchResult.title.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return Container(
      color: AppColors.mainColor,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];

          return Container(
            margin: EdgeInsets.fromLTRB(8, 8, 8, 6),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: const Offset(
                    3.0,
                    3.0,
                  ),
                  blurRadius: 4.0,
                  spreadRadius: 3.0,
                ), //Bo/BoxShadow
              ],
            ),
            child: ListTile(
              title: Text(suggestion.title),
              onTap: () {
                query = suggestion.title;
                text = suggestion.text;
                showResults(context);
              },
            ),
          );
        },
      ),
    );
  }
}
