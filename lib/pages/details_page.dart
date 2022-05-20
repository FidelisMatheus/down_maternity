// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_sindrome_down/routes/routes.dart';

import 'package:projeto_sindrome_down/utils/appcolors.dart';
import 'package:projeto_sindrome_down/utils/dimensions.dart';
import 'package:projeto_sindrome_down/widgets/expansion_widget.dart';

class DetailsScreen extends StatelessWidget {
  final int id;
  final String title;
  const DetailsScreen({
    Key? key,
    required this.id,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8ECAE6),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset('images/detalhes.png'),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                ),
              ),
              Center(child: ExpansionWidget(title: title)),
              Container(
                padding: EdgeInsets.only(left: 5),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.initial);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
                width: Dimensions.cardHeight50,
                height: Dimensions.cardWidth50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.white.withOpacity(0.5),
                ),
                margin: EdgeInsets.only(
                  top: Dimensions.height10,
                  left: Dimensions.height10,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 30, 10),
            child: Center(
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy  text ever since the 1500s, w hen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                    offset: Offset(2.0, 5.0),
                  )
                ],
                color: AppColors.yellowColor),
            width: Dimensions.width350,
            margin: EdgeInsets.only(top: 30),
          )
        ],
      ),
    );
  }
}
