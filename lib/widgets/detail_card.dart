import 'package:flutter/material.dart';
import 'package:pic_translate/main.dart';
import 'package:pic_translate/models/models.dart';
import 'package:pic_translate/resources/resources.dart';

class DetailCard extends StatelessWidget {
  DetailCard({super.key});
  final appData = getIt<AppData>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: PaddingSizes.lg, horizontal: PaddingSizes.md),
      child: Card(
        shape: AppStyles.cardShape,
        elevation: ElevationSizes.lg,
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.memory(
                appData.imageData!,
                fit: BoxFit.fill,
              ),
            ),
            ListTile(
              leading: Text('Name in ${appData.currentLanguage.name}:',
                  style: const TextStyle(fontSize: 15)),
              title: Text(appData.item!.name,
                  style: const TextStyle(fontSize: 18)),
            ),
            ListTile(
              title: const Text('Description'),
              subtitle: Text(appData.item!.description),
            ),
            ListTile(
              title:
                  Text('Example Sentence In ${appData.currentLanguage.name}'),
              subtitle: Text(appData.item!.examples.first),
            ),
            ListTile(
              title: const Text('Translated Example Sentence'),
              subtitle: Text(appData.item!.translatedExamples.first),
            ),
          ],
        ),
      ),
    );
  }
}
