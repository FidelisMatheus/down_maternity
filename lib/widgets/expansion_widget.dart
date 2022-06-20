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
          height: Dimensions.height70,
          decoration: BoxDecoration(
              borderRadius: widget.topic.expand
                  ? BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius10),
                      topRight: Radius.circular(Dimensions.radius10),
                    )
                  : BorderRadius.all(Radius.circular(Dimensions.radius10)),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                  offset: Offset(2.0, 5.0),
                )
              ],
              color: AppColors.whiteColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                width: Dimensions.width250,
                child: Text(
                  widget.topic.title,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                    fontSize: Dimensions.font16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Icon(
                widget.topic.expand
                    ? Icons.arrow_drop_up_outlined
                    : Icons.arrow_drop_down_outlined,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    !widget.topic.check
                        ? widget.topic.check = true
                        : widget.topic.check;
                  });
                },
                icon: widget.topic.check
                    ? Icon(
                        Icons.check_box_rounded,
                        color: AppColors.yellowColor,
                      )
                    : Icon(
                        Icons.check_box_outline_blank_rounded,
                        color: AppColors.yellowColor,
                      ),
              ),
            ],
          ),
        ),
        widget.topic.expand == true
            ? Container(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      Dimensions.height20,
                      Dimensions.width10,
                      Dimensions.height20,
                      Dimensions.width10,
                    ),
                    child: Text(
                      widget.topic.text,
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: Dimensions.font18,
                      ),
                      textAlign: widget.topic.text.contains('•', 0)
                          ? TextAlign.start
                          : TextAlign.left,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Dimensions.radius10),
                    bottomRight: Radius.circular(Dimensions.radius10),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      offset: Offset(2.0, 5.0),
                    )
                  ],
                  color: AppColors.whiteColor,
                ),
                width: Dimensions.width350,
                margin: EdgeInsets.only(bottom: Dimensions.width20),
              )
            : SizedBox(
                height: Dimensions.height20,
              ),
      ],
    );
  }
}
