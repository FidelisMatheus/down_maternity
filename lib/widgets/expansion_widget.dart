// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:projeto_sindrome_down/utils/appcolors.dart';
import 'package:projeto_sindrome_down/utils/dimensions.dart';

import '../model/topic.dart';

class ExpansionWidget extends StatefulWidget {
  final Topic topic;

  const ExpansionWidget({
    Key? key,
    required this.topic,
  }) : super(key: key);

  @override
  _ExpansionWidgetState createState() => _ExpansionWidgetState();
}

class _ExpansionWidgetState extends State<ExpansionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Dimensions.width350,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: widget.topic.expand
                  ? BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )
                  : BorderRadius.all(Radius.circular(8)),
              boxShadow: const [
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
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      widget.topic.title,
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
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.check_box_outline_blank),
              ),
            ],
          ),
        ),
        widget.topic.expand == true
            ? Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.topic.text,
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      offset: Offset(2.0, 5.0),
                    )
                  ],
                  color: AppColors.yellowColor,
                ),
                width: Dimensions.width350,
                margin: EdgeInsets.only(bottom: 20),
              )
            : SizedBox(
                height: 20,
              )
      ],
    );
  }
}
