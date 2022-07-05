// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_sindrome_down/routes/routes.dart';

import 'package:projeto_sindrome_down/utils/dimensions.dart';

class BigCardCalendarWidget extends StatelessWidget {
  final String image;
  final String title;

  const BigCardCalendarWidget({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.getCalendarScreen(title, image));
      },
      child: Container(
        width: Dimensions.cardWidth,
        height: Dimensions.cardHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
        ),
        child: Card(
          color: Color(0xFFFFD875).withOpacity(0.63),
          shadowColor: Color(0xFF000000),
          elevation: 10,
          margin: EdgeInsets.all(Dimensions.height10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 160,
                    height: 172,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    )),
                SizedBox(
                  height: Dimensions.height10,
                ),
                SizedBox(
                  width: 140,
                  height: 80,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: Dimensions.font18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
