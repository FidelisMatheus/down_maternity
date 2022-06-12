// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_sindrome_down/routes/routes.dart';
import 'package:projeto_sindrome_down/utils/appcolors.dart';
import 'package:projeto_sindrome_down/utils/dimensions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8ECAE6),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: Dimensions.height10),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.initial);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  margin: EdgeInsets.only(
                      top: Dimensions.height10, left: Dimensions.height10),
                ),
                Container(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Sobre ',
                        style: TextStyle(
                            fontSize: 32,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      Text(
                        'o App',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(top: 12, left: 50),
                ),
              ],
            ),
            padding: EdgeInsets.only(top: 10, bottom: 20),
            color: AppColors.yellowColor,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: AppColors.orangeColor),
              child: ListView(
                padding: EdgeInsets.fromLTRB(
                  40,
                  20,
                  40,
                  20,
                ),
                shrinkWrap: true,
                children: [
                  const Text(
                    'Saber exatamente quais são as questões de saúde que podem ocorrer com mais frequência em pessoas com síndrome de Down, conseguir diagnosticá-las de forma rápida e eficiente e buscar os tratamentos adequados são medidas essenciais para que indivíduos com a trissomia possam desfrutar de uma vida plena e saudável',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'O Down Maternity é um aplicativo que contém informações sobre crianças com Síndrome de Down, nele será encontrado tópicos e com uma opção de marcação para os já vizualizados.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Foi desenvolvido como projeto para a disciplina "Programação para dispositivos móveis".',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Desenvolvido por:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          shadows: const <Shadow>[
                            Shadow(
                              offset: Offset(2, 2),
                              blurRadius: 3.0,
                              color: Color.fromARGB(100, 0, 0, 0),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: Icon(
                                  FontAwesomeIcons.linkedin,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                onTap: () => launchUrl(
                                  Uri.parse(
                                      'https://www.linkedin.com/in/lucas-cruzz/'),
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Text(
                                  'Lucas Cruz',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    shadows: const <Shadow>[
                                      Shadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 3.0,
                                        color: Color.fromARGB(100, 0, 0, 0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                child: Icon(
                                  FontAwesomeIcons.linkedin,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                onTap: () => launchUrl(
                                  Uri.parse(
                                      'https://www.linkedin.com/in/matheus-fidelis/'),
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Text(
                                  'Matheus Fidelis',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    shadows: const <Shadow>[
                                      Shadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 3.0,
                                        color: Color.fromARGB(100, 0, 0, 0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                child: Icon(
                                  FontAwesomeIcons.linkedin,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                onTap: () => launchUrl(
                                  Uri.parse(
                                      'https://www.linkedin.com/in/leonardo-garroni'),
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Text(
                                  'Leonardo Garroni',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    shadows: const <Shadow>[
                                      Shadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 3.0,
                                        color: Color.fromARGB(100, 0, 0, 0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
