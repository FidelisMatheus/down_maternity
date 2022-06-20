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
  var collection = FirebaseFirestore.instance.collection('users');
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
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
              padding: EdgeInsets.only(
                  bottom: Dimensions.height20, top: Dimensions.height10),
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
            FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
              future: collection.doc(_auth.currentUser!.uid).get(),
              builder: (_, snapshot) {
                if (snapshot.hasError) return Text('Error = ${snapshot.error}');
                if (snapshot.hasData) {
                  var data = snapshot.data!.data();
                  List<Topic> topics = [];

                  if (widget.id == 1) {
                    for (var item in data!['listTopics1']) {
                      topics.add(
                        Topic(
                          item['title'],
                          item['text'],
                          item['check'],
                          item['expand'],
                        ),
                      );
                    }
                  }

                  if (widget.id == 2) {
                    for (var item in data!['listTopics2']) {
                      topics.add(
                        Topic(
                          item['title'],
                          item['text'],
                          item['check'],
                          item['expand'],
                        ),
                      );
                    }
                  }

                  if (widget.id == 3) {
                    for (var item in data!['listTopics3']) {
                      topics.add(
                        Topic(
                          item['title'],
                          item['text'],
                          item['check'],
                          item['expand'],
                        ),
                      );
                    }
                  }

                  if (widget.id == 4) {
                    for (var item in data!['listTopics4']) {
                      topics.add(
                        Topic(
                          item['title'],
                          item['text'],
                          item['check'],
                          item['expand'],
                        ),
                      );
                    }
                  }

                  return ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: topics.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            topics[index].expand = !topics[index].expand;

                            !topics[index].check
                                ? topics[index].check = true
                                : topics[index].check;
                          });
                          Authentication().updateTopic(
                            widget.id.toString(),
                            topics,
                          );
                        },
                        onDoubleTap: () {
                          setState(() {
                            topics[index].check
                                ? topics[index].check = false
                                : topics[index].check;
                          });

                          Authentication().updateTopic(
                            widget.id.toString(),
                            topics,
                          );
                        },
                        child: ExpansionWidget(
                          topic: topics[index],
                        ),
                      );
                    },
                  );
                }
                return Center(
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor: AppColors.whiteColor,
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
