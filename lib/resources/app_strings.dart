import 'package:pic_translate/main.dart';

class AppStrings {
  static const appName = 'PicTranslate';
  static const dropdownMenuTitle = 'Choose a Language: ';
  static String textPrompt =
      """For the image item, create a JSON string that contains:

* "name": The common and formal name of the item in ${appData.currentLanguage}.
* "description": A short and easy-to-understand description of the item in English.
* "examples": A list of 3 short and simple example sentences using the name of the item in ${appData.currentLanguage}.
* "translated_examples": A list of English translations of the ${appData.currentLanguage} examples.

Ensure the JSON string is well-formatted and valid, with no extraneous characters or encoding issues. 
do not add ```json and ``` before and after the json.
Example format (without any spaces, ```json before or after the output):
{"name":"Sedia","description":"A piece of furniture with a back and four legs, used for sitting on.","examples":["C'è una sedia vuota al tavolo.","Mi piace la sedia con il cuscino rosso.","Puoi spostare la sedia più vicino al finestra?"],"translated_examples":["There is an empty chair at the table.","I like the chair with the red cushion.","Can you move the chair closer to the window?"]}""";
  static const mimeType = 'image/jpeg';
}
