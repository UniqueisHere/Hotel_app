import 'package:flutter/material.dart';
import 'package:hotel_app/screens/about_us.dart';
import 'package:hotel_app/screens/home_screen.dart';
import 'package:hotel_app/widgets/date_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
