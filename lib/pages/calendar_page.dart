// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

import '../model/table.dart';
import '../routes/routes.dart';
import '../utils/appcolors.dart';
import '../utils/dimensions.dart';

class CalendarPage extends StatefulWidget {
  final String title;
  final String image;
  const CalendarPage({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  List<TableStrings> tableList = [
    TableStrings(
      'Ao nascer (Zero meses)',
      [
        'Vacina Calmette-Guerin (BCG)\n - Previne contra as formas graves de tuberculose\n ',
        'Hepatite B\n -Previne contra a hepatite B',
      ],
      [
        '- Dose única\n',
        '- Dose ao nascer\n',
      ],
    ),
    TableStrings(
      '2 meses',
      [
        'Vacina Pentavalente\n - Previne contra difteria, tétano, coqueluche, hepatite B, meningite e infecções por Haemophilus Influenzae B',
        '\nVacina Inativa da Poliomielite (VIP)\n - Previne a paralisia infantil',
        '\nPneumocócica 10 valente\n - Previne pneumonia, otite, meningite e outras doenças causadas pelo pneumococo',
        '\nRotavírus\n - Previne diarreia por rotavírus'
      ],
      [
        '- Primeira dose\n',
        '- Primeira dose\n',
        '- Primeira dose\n',
        '- Primeira dose\n',
      ],
    ),
    TableStrings(
      '3 meses',
      [
        'Meningocócica C\n - Previne a doença meningocócica C',
        '\nMeningocócica ACWY\n - Previne a doença meningocócica causada pelos tipos A, C, W e Y.',
        '\nMeningocócica B recombinante\n - Previne a doença meningocócica causada pela bactéria Neisseria meningitidis do grupo B',
      ],
      [
        '- Primeira dose\n',
        '- Primeira dose\n',
        '- Primeira dose\n',
      ],
    ),
    TableStrings(
      '4 meses',
      [
        'Vacina Pentavalente\n - Previne contra difteria, tétano, coqueluche, hepatite B, meningite e infecções por Haemophilus Influenzae B',
        '\nVacina Inativa da Poliomielite (VIP)\n - Previne a paralisia infantil',
        '\nVacina Pneumocócica 10 valente\n - Previne pneumonia, otite, meningite e outras doenças causadas pelo pneumococo',
        '\nRotavírus\n - Previne diarreia por rotavírus',
      ],
      [
        '- Reforço\n',
        '- Reforço\n',
        '- Reforço\n',
        '- Reforço\n',
      ],
    ),
    TableStrings(
      '5 meses',
      [
        'Meningocócica C\n - Previne a doença meningocócica C',
        '\nMeningocócica ACWY\n - Previne a doença meningocócica causada pelos tipos A, C, W e Y.',
        '\nMeningocócica B recombinante\n - Previne a doença meningocócica causada pela bactéria Neisseria meningitidis do grupo B',
      ],
      [
        '- Reforço\n',
        '- Reforço\n',
        '- Reforço\n',
      ],
    ),
    TableStrings(
      '6 meses',
      [
        'Vacina Pentavalente\n - Previne contra difteria, tétano, coqueluche, hepatite B, meningite e infecções por Haemophilus Influenzae B',
        '\nVacina Inativa da Poliomielite (VIP)\n - Previne a paralisia infantil',
        '\nVacina Pneumocócica 10 valente\n - Previne pneumonia, otite, meningite e outras doenças causadas pelo pneumococo',
        '\nVacina influenza\n - Previne a gripe',
      ],
      [
        '- Reforço\n',
        '- Reforço\n',
        '- Reforço\n',
        '- A partir de 6 meses\n',
      ],
    ),
    TableStrings(
      '9 meses',
      [
        'Febre Amarela\n -Previne febre amarela',
      ],
      [
        'Primeira dose\n',
      ],
    ),
    TableStrings(
      '12 meses',
      [
        'Tríplice Viral\n - Previne sarampo, caxumba e rubeóla',
        '\nPneumocócica 10 conjugada \n - Previne pneumonia, otite, meningite e outras doenças causadas pelo pneumococo',
        '\nMeningocócica C\n - Previne a doença meningocócica C',
        '\nMeningocócica ACWY\n - Previne a doença meningocócica causada pelos tipos A, C, W e Y.',
        '\nMeningocócica B recombinante\n - Previne a doença meningocócica causada pela bactéria Neisseria meningitidis do grupo B',
        '\nHepatite A\n - Previne a hepatite A',
        '\nVaricela\n - Previne formas de varicelas mais graves',
      ],
      [
        '- Primeira dose\n',
        '- Reforço\n',
        '- Reforço\n',
        '- Reforço\n',
        '- Reforço\n',
        '- Primeira dose\n',
        '- Primeira dose\n',
      ],
    ),
  ];
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // Get the height you want to scroll to.
    var screenHeight = MediaQuery.of(context).size.height;
    double scroll = 0;

    return Scaffold(
      backgroundColor: const Color(0xFF8ECAE6),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  height: Dimensions.detailsImgSize,
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(Dimensions.radius30),
                      bottomLeft: Radius.circular(Dimensions.radius30),
                    ),
                  ),
                ),
                Container(
                  width: Dimensions.height50,
                  height: Dimensions.height50,
                  margin: EdgeInsets.only(
                    right: Dimensions.width350,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.homeScreen);
                    },
                    icon: Icon(
                      Icons.chevron_left_rounded,
                      color: AppColors.blueColor,
                      size: Dimensions.iconSize40,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: Dimensions.height20, top: Dimensions.height10),
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: tableList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.black,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 400,
                              width: 150,
                              child: Center(
                                child: Text(
                                  tableList[index].cicloVida,
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w500,
                                    fontSize: Dimensions.font16,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red[100],
                                border: Border(
                                  right: BorderSide(
                                    width: 2,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 400,
                              width: 500,
                              child: Center(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  itemCount: tableList[index].vacina.length,
                                  itemBuilder: (context, pos) {
                                    return Text(
                                      tableList[index].vacina[pos],
                                      style: TextStyle(
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w500,
                                        fontSize: Dimensions.font16,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red[100],
                                border: Border(
                                  right: BorderSide(
                                    width: 2,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 400,
                              width: 200,
                              child: Center(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  itemCount: tableList[index].doses.length,
                                  itemBuilder: (context, pos) {
                                    return Text(
                                      tableList[index].doses[pos],
                                      style: TextStyle(
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w500,
                                        fontSize: Dimensions.font16,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red[100],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: Dimensions.height40,
            ),
            SizedBox(
              height: Dimensions.height40,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColors.mainColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                if (scroll > 0) {
                  scroll -= 150;
                  scrollController.animateTo(
                    scroll,
                    curve: Curves.easeOut,
                    duration: Duration(seconds: 1),
                  );
                }
              },
              child: Container(
                margin: EdgeInsets.only(left: 50),
                padding: EdgeInsets.all(10),
                child: Icon(Icons.arrow_drop_up),
                decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (scroll < 3150) {
                  scroll += 150;
                  scrollController.animateTo(
                    scroll,
                    curve: Curves.easeOut,
                    duration: Duration(seconds: 1),
                  );
                }
              },
              child: Container(
                margin: EdgeInsets.only(right: 50),
                padding: EdgeInsets.all(10),
                child: Icon(Icons.arrow_drop_down),
                decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
