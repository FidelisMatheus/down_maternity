// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:projeto_sindrome_down/utils/appcolors.dart';
import 'package:projeto_sindrome_down/utils/dimensions.dart';

class ExpansionWidget extends StatefulWidget {
  final String title;
  const ExpansionWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _ExpansionWidgetState createState() => _ExpansionWidgetState();
}

class _ExpansionWidgetState extends State<ExpansionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.only(top: 255),
      padding: EdgeInsets.fromLTRB(10, 5, 5, 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
              offset: Offset(2.0, 5.0),
            )
          ],
          color: AppColors.yellowColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Container(
                  width: 250,
                  alignment: Alignment.center,
                  child: Text(
                    widget.title,
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w800,
                      fontSize: Dimensions.font16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Icon(Icons.arrow_drop_down_outlined),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.check_box_outline_blank),
          ),
        ],
      ),
    );
  }
}
