import 'package:flutter/services.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:pic_translate/enums/enums.dart';
import 'package:pic_translate/models/models.dart';
import 'package:pic_translate/resources/resources.dart';

class AppData {
  Languages currentLanguage = Languages.Arabic;
  GenerativeModel model =
      GenerativeModel(model: 'gemini-pro-vision', apiKey: geminiAPI);
  Uint8List? imageData;
  Item? item;
}
