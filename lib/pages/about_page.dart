// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_sindrome_down/routes/routes.dart';
import 'package:projeto_sindrome_down/utils/appcolors.dart';
import 'package:projeto_sindrome_down/utils/dimensions.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

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
                      Navigator.pushNamed(context, Routes.homeScreen);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(top: Dimensions.height10, left: Dimensions.height10),
                ),
                Container(
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Sobre ',
                        style: TextStyle(
                            fontSize: 32, fontFamily: 'Open Sans', fontWeight: FontWeight.normal, color: Colors.white),
                      ),
                      Text(
                        'o App',
                        style: TextStyle(
                            fontFamily: 'Open Sans', fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
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
                  'Down Maternity é uma iniciativa de alunos e professores dos cursos de Ciências da Computação e Medicina da UNIFENAS (Alfenas-MG). Este App oferece orientações e informações sobre a promoção da saúde e cuidados de crianças com Síndrome de Down. O aplicativo foi estruturado com base nas Diretrizes de atenção à pessoa com Síndrome de Down” (BRASIL, 2013) e nas necessidades reais relatadas\n O App foi desenvolvido como projetos de Iniciação científica e disciplina programação para dispositivos móveis\n Planejamento e estruturação: Karine Alonso dos Santos ',
                  style: TextStyle(
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
                      'Planejamento e estruturação:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              child: Icon(
                                FontAwesomeIcons.linkedin,
                                color: Colors.black,
                                size: 35,
                              ),
                              onTap: () => launchUrl(
                                Uri.parse(''),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: Text(
                                'Karine Alonso dos Santos',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
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
                                color: Colors.black,
                                size: 35,
                              ),
                              onTap: () => launchUrl(
                                Uri.parse('https://www.linkedin.com/in/danielly-beraldo-61a15711b/'),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: Text(
                                'Danielly Beraldo dos Santos Silva ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
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
                      height: Dimensions.height20,
                    ),
                    Text(
                      'Desenvolvido por:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
                                color: Colors.black,
                                size: 35,
                              ),
                              onTap: () => launchUrl(
                                Uri.parse('https://www.linkedin.com/in/lucas-cruzz/'),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                              child: Text(
                                'Lucas Cruz',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
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
                                color: Colors.black,
                                size: 35,
                              ),
                              onTap: () => launchUrl(
                                Uri.parse('https://www.linkedin.com/in/matheus-fidelis/'),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                              child: Text(
                                'Matheus Fidelis',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
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
                                color: Colors.black,
                                size: 35,
                              ),
                              onTap: () => launchUrl(
                                Uri.parse('https://www.linkedin.com/in/leonardo-garroni'),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                              child: Text(
                                'Leonardo Garroni',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
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
        ],
      ),
    );
  }
}
