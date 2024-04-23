import 'package:flutter/material.dart';
import 'package:pic_translate/resources/resources.dart';
import 'package:pic_translate/widgets/widgets.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DetailCard(),
          CustomButton(
              lable: 'Translate New Picture',
              iconData: Icons.insert_photo,
              callback: () => Navigator.pop(context))
        ],
      ),
    );
  }
}
