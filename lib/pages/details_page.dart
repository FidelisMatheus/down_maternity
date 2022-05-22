// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_sindrome_down/model/topic.dart';
import 'package:projeto_sindrome_down/routes/routes.dart';

import 'package:projeto_sindrome_down/utils/dimensions.dart';
import 'package:projeto_sindrome_down/widgets/expansion_widget.dart';

import '../model/list_topics.dart';

class DetailsPage extends StatefulWidget {
  final int id;
  final String title;

  const DetailsPage({
    Key? key,
    required this.id,
    required this.title,
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
                  child: Image.asset('images/detalhes.png'),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(
                    right: Dimensions.width350,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.homeScreen);
                    },
                    icon: Icon(
                      Icons.chevron_left_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: listTopics.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      listTopics[index].expand = !listTopics[index].expand;
                    });
                  },
                  child: ExpansionWidget(
                    topic: listTopics[index],
                  ),
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
