import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pic_translate/models/models.dart';

void main() {
  group('Test Item Methods', () {
    test('Test Item.fromJson constructor', () {
      const geminiResponceString =
          """{"name":"Sedia","description":"A piece of furniture with a back and four legs, used for sitting on.","examples":["C'è una sedia vuota al tavolo.","Mi piace la sedia con il cuscino rosso.","Puoi spostare la sedia più vicino al finestra?"],"translated_examples":["There is an empty chair at the table.","I like the chair with the red cushion.","Can you move the chair closer to the window?"]}""";
      final item = Item.fromJson(geminiResponceString);
      expect(item.name, 'Sedia');
      expect(item.description,
          'A piece of furniture with a back and four legs, used for sitting on.');
      expect(item.translatedExamples.length, 3);
      expect(item.examples.length, 3);
    });
    test('Test toJson method', () {
      const geminiResponceString =
          """{"name":"Sedia","description":"A piece of furniture with a back and four legs, used for sitting on.","examples":["C'è una sedia vuota al tavolo.","Mi piace la sedia con il cuscino rosso.","Puoi spostare la sedia più vicino al finestra?"],"translated_examples":["There is an empty chair at the table.","I like the chair with the red cushion.","Can you move the chair closer to the window?"]}""";
      final item = Item(
          name: 'Sedia',
          description:
              "A piece of furniture with a back and four legs, used for sitting on.",
          examples: [
            "C'è una sedia vuota al tavolo.",
            "Mi piace la sedia con il cuscino rosso.",
            "Puoi spostare la sedia più vicino al finestra?"
          ],
          translatedExamples: [
            "There is an empty chair at the table.",
            "I like the chair with the red cushion.",
            "Can you move the chair closer to the window?"
          ]);
      expect(item.toJson(), jsonDecode(geminiResponceString));
    });
  });
}
