import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial2/pages/home_page.dart';
import 'package:tutorial2/pages/login_page.dart';
import 'package:tutorial2/utils/routes.dart';
import 'package:tutorial2/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Mytheme.lightThemeData(context),
      darkTheme: Mytheme.darkThemeData(context),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
      },
    );
  }
}
