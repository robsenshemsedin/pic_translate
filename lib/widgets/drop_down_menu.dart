import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pic_translate/enums/enums.dart';
import 'package:pic_translate/main.dart';
import 'package:pic_translate/resources/resources.dart';

class LanguageDropdown extends StatefulWidget {
  const LanguageDropdown({super.key});

  @override
  LanguageDropdownState createState() {
    return LanguageDropdownState();
  }
}

class LanguageDropdownState extends State<LanguageDropdown> {
  Languages? _selectedLanguage; // Default selected language
  @override
  void initState() {
    _selectedLanguage = appData.currentLanguage; // Default selected language
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.dropdownMenuTitle,
          style: AppStyles.dropDownTextStyle,
        ), // Label before the dropdown
        DropdownButton<Languages>(
          value: _selectedLanguage,
          onChanged: onChanged,
          items: Languages.values.map((Languages language) {
            return DropdownMenuItem<Languages>(
              value: language,
              child: Text(
                language.toString().split('.').last,
                style: AppStyles.dropDownTextStyle,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  onChanged(Languages? newLanguage) async {
    appData.currentLanguage = newLanguage!;
    setState(() {
      _selectedLanguage = newLanguage;
    });
    const storage = FlutterSecureStorage();
    await storage.write(key: 'currentLanguage', value: newLanguage.name);
  }
}
