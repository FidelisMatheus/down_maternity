// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8ECAE6),
      body: SingleChildScrollView(
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
            RawScrollbar(
              thickness: 5,
              radius: Radius.circular(20),
              thumbColor: AppColors.mainBlackColor,
              isAlwaysShown: true,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: Image.asset(
                        'images/calendar1.jpg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height40,
            ),
            RawScrollbar(
              thickness: 5,
              radius: Radius.circular(20),
              thumbColor: AppColors.mainBlackColor,
              isAlwaysShown: true,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 25,
                        right: 25,
                      ),
                      child: Image.asset(
                        'images/calendar2.jpg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height40,
            ),
          ],
        ),
      ),
    );
  }
}
