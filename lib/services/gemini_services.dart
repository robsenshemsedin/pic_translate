import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:pic_translate/main.dart';
import 'package:pic_translate/models/models.dart';
import 'package:pic_translate/resources/resources.dart';

class GeminiServices {
  static Future<Item?> getItem() async {
    final prompt = TextPart(AppStrings.textPrompt);
    final dataPart = DataPart('image/jpeg', appData.imageData!);
    final response = await appData.model.generateContent([
      Content.multi([prompt, dataPart])
    ]);
    return response.text == null ? null : Item.fromJson(response.text!);
  }
}
