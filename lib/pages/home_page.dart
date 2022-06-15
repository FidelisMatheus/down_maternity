// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:projeto_sindrome_down/auth/authentication.dart';
import 'package:projeto_sindrome_down/model/topic.dart';
import 'package:projeto_sindrome_down/routes/routes.dart';
import 'package:projeto_sindrome_down/utils/appcolors.dart';
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

  // final _searchview = TextEditingController();

  // final controller = FloatingSearchBarController();

  // late bool _firstSearch = true;
  // late String _query = "";

  List<Topic> _nebulae = [];
//  List<String> _filterList = [];

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
              FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                future: collection.doc(_auth.currentUser!.uid).get(),
                builder: (_, snapshot) {
                  if (snapshot.hasData) {
                    var data = snapshot.data!.data();
                    double _qtdCheck = 0;

                    //aqui carregado todas as lista em uma só para pesquisa e incremento o contador de tópicos já visto
                    for (var item in data!['listTopics1']) {
                      item['check'] ? _qtdCheck++ : 0;
                      _nebulae.add(
                        Topic(
                          item['title'],
                          item['text'],
                          item['check'],
                          item['expand'],
                        ),
                      );
                    }

                    for (var item in data['listTopics2']) {
                      item['check'] ? _qtdCheck++ : 0;
                      _nebulae.add(
                        Topic(
                          item['title'],
                          item['text'],
                          item['check'],
                          item['expand'],
                        ),
                      );
                    }

                    for (var item in data['listTopics3']) {
                      item['check'] ? _qtdCheck++ : 0;
                      _nebulae.add(
                        Topic(
                          item['title'],
                          item['text'],
                          item['check'],
                          item['expand'],
                        ),
                      );
                    }

                    for (var item in data['listTopics4']) {
                      item['check'] ? _qtdCheck++ : 0;
                      _nebulae.add(
                        Topic(
                          item['title'],
                          item['text'],
                          item['check'],
                          item['expand'],
                        ),
                      );
                    }

                    var _valorPercent = (_qtdCheck / 21);
                    var _percent = _qtdCheck == 21
                        ? (_valorPercent * 100)
                        : (_valorPercent * 100).toStringAsPrecision(2);

                    return CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 20.0,
                      animation: true,
                      percent: _valorPercent,
                      center: Text(
                        "$_percent%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      footer: Padding(
                        padding: const EdgeInsets.fromLTRB(
                          30,
                          10,
                          10,
                          30,
                        ),
                        child: Text(
                          _percent == 100
                              ? 'Parabéns você concluiu seu aprendizado!!!'
                              : 'Percentual de Aprendizado',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.0),
                        ),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: AppColors.yellowColor,
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: AppColors.whiteColor,
                    ),
                  );
                },
              ),
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

//aqui voce pode fazer o método para redirecionar para a página do topico
  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Topic> suggestions = _nebulae.where((searchResult) {
      final result = searchResult.title.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
      shrinkWrap: true,
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion.title),
          onTap: () {
            query = suggestion.title;
            showResults(context);
          },
        );
      },
    );
  }
}
