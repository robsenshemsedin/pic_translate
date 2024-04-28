import 'package:flutter/material.dart';
import 'package:pic_translate/main.dart';
import 'package:pic_translate/resources/resources.dart';
import 'package:pic_translate/screens/screens.dart';
import 'package:pic_translate/services/image_services.dart';
import 'package:pic_translate/widgets/custom_button.dart';

class ImagePickerCard extends StatefulWidget {
  const ImagePickerCard({super.key});

  @override
  State<ImagePickerCard> createState() => _ImagePickerCardState();
}

class _ImagePickerCardState extends State<ImagePickerCard> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
            shape: AppStyles.cardShape,
            elevation: ElevationSizes.lg,
            child: Padding(
              padding: const EdgeInsets.all(PaddingSizes.md),
              child: SizedBox(
                width: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(
                      Icons.add_a_photo,
                      size: 100,
                    ),
                    Text(
                      'What can you translate today?',
                      style: AppStyles.pickPhotTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    isLoading
                        ? const CircularProgressIndicator()
                        : CustomButton(
                            lable: 'Take a Picture',
                            iconData: Icons.camera_alt,
                            callback: takeAPicture),
                  ],
                ),
              ),
            )));
  }

  Future<void> takeAPicture() async {
    final imageService = ImageService();
    final item = await imageService.takeImage(() => setState(() {
          isLoading = !isLoading;
        }));

    if (item == null) {
      debugPrint('itme is null');
      setState(() {
        isLoading = !isLoading;
      });
      return;
    }

    appData.item = item;
    setState(() {
      isLoading = !isLoading;
    });
    if (!context.mounted) return;
    Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const DetailPage()));
  }
}
