// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_sindrome_down/auth/authentication.dart';
import 'package:projeto_sindrome_down/model/topic.dart';
import 'package:projeto_sindrome_down/routes/routes.dart';
import 'package:projeto_sindrome_down/utils/appcolors.dart';

import 'package:projeto_sindrome_down/utils/dimensions.dart';
import 'package:projeto_sindrome_down/widgets/expansion_widget.dart';

import '../model/list_topics.dart';

class DetailsPage extends StatefulWidget {
  final int id;
  final String title;
  final String image;

  const DetailsPage({
    Key? key,
    required this.id,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List<Topic> listTopics = [];

  @override
  void initState() {
    super.initState();
    listTopics = ListTopics(id: widget.id).selectList();
  }

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
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: listTopics.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      listTopics[index].expand = !listTopics[index].expand;

                      !listTopics[index].check ? listTopics[index].check = true : listTopics[index].check;
                    });
                    Authentication().updateTopic(
                      widget.id.toString(),
                      listTopics,
                    );
                  },
                  onDoubleTap: () {
                    setState(() {
                      listTopics[index].check ? listTopics[index].check = false : listTopics[index].check;
                    });

                    Authentication().updateTopic(
                      widget.id.toString(),
                      listTopics,
                    );
                  },
                  child: ExpansionWidget(
                    topic: listTopics[index],
                  ),
                );
              },
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
