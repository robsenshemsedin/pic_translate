import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:pic_translate/enums/enums.dart';
import 'package:pic_translate/enums/languages.dart';
import 'package:pic_translate/models/models.dart';
import 'package:pic_translate/screens/screens.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerSingleton<AppData>(
      AppData(currentLanguage: await currentLanguage()));
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(const MyApp());
}

final appData = getIt<AppData>();
Future<Languages> currentLanguage() async {
  const storage = FlutterSecureStorage();
  final currentLanguage = await storage.read(key: 'currentLanguage');
  if (currentLanguage == null) {
    await storage.write(key: 'currentLanguage', value: Languages.Arabic.name);
    return Languages.Arabic;
  }
  return languesFromString(currentLanguage);
}

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
