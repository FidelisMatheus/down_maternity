import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_sindrome_down/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projeto Sindrome de Down',
      initialRoute: Routes.getSplashScreen(),
      getPages: Routes.routes,
    );
  }
}
