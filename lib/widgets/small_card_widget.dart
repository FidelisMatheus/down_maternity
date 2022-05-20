import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projeto_sindrome_down/utils/appcolors.dart';
import 'package:projeto_sindrome_down/utils/dimensions.dart';

class SmallCardWidget extends StatelessWidget {
  const SmallCardWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        child: Column(
          children: [
            Container(
              width: Dimensions.cardWidth50,
              height: Dimensions.cardHeight50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(Dimensions.radius10),
                ),
              ),
              child: Icon(Icons.medication_sharp),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Text(
              text,
              style: TextStyle(
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
