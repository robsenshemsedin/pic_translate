import 'package:flutter_test/flutter_test.dart';
import 'package:pic_translate/enums/enums.dart';
import 'package:pic_translate/models/models.dart';

void main() {
  test('AppData should initialize correctly', () {
    final appData = AppData(currentLanguage: Languages.Arabic);
    expect(appData.currentLanguage, Languages.Arabic);
    expect(appData.item, null);
    expect(appData.imageData, null);
  });
}
