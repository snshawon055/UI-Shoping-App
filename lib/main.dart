import 'package:flutter/material.dart';
import 'package:shop_app_ui/widget/colors.dart';

import 'screem/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
        fontFamily: "Gordita",
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
