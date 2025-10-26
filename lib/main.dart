import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/home/home.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('note_box');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Retro'),
      debugShowCheckedModeBanner: false,
      title: 'Note App',
      home: const Home(),
    );
  }
}
