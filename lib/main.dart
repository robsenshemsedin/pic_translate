import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pic_translate/models/models.dart';
import 'package:pic_translate/screens/screens.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<AppData>(AppData());
}

void main() {
  setupGetIt();
  runApp(const MyApp());
}

final appData = getIt<AppData>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
