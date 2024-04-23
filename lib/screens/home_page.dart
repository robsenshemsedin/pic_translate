import 'package:flutter/material.dart';
import 'package:pic_translate/resources/resources.dart';
import 'package:pic_translate/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(
          AppStrings.appName,
          style: AppStyles.appTitleStyle,
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LanguageDropdown(),
          ImagePickerCard(),
        ],
      ),
    );
  }
}
