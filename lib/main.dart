import '../theme.dart';
import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: buildThemeData(),

      /// On first screen must call [SizeConfig().init(context)]
      home: const HomeScreen(),
    );
  }
}
