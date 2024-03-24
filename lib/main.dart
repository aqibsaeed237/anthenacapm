import 'package:athenacapm/routing/router.dart';
import 'package:athenacapm/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Anthena Capital Management',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: darkBlueColor,
        scaffoldBackgroundColor: whiteColor,
        appBarTheme: const AppBarTheme(

          backgroundColor: whiteColor,
          iconTheme: IconThemeData(color: darkBlueColor),


        ),
        dividerColor: lightGrayColor,


        useMaterial3: true,
      ),
     getPages: AppRoutes.routes,
      initialRoute: AppRoutes.initialRoute,
      home:  const MyHomePage(),
    );
  }
}

