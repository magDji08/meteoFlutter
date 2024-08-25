import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meteo/controllers/navigation_controller.dart';
import 'package:meteo/outils/route.dart';
import 'package:meteo/recherche_page.dart';

void main() {
  Get.put(NavigationController()); // Injecte le contrôleur de navigation
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
          ),
      debugShowCheckedModeBanner: false,
      home: RecherchePage(),
      getPages: AppRoute.route,
    );
  }
}
