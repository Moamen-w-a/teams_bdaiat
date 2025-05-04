import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teams_bdaiat/views/pages/home_page.dart';

import 'views/pages/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'teams_Bdaiat',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: MyHomePage(),
    );
  }
}
