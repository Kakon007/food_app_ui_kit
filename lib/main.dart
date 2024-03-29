import 'package:flutter/material.dart';
import 'package:food_ui_kit/view/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent)
            .copyWith(background: Colors.white),
      ),
      home: const HomeView(),
    );
  }
}
