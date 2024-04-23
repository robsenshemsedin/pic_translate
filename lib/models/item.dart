import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  final String name;
  final String description;
  final List<String> examples;
  @JsonKey(name: 'translated_examples')
  final List<String> translatedExamples;

  Item({
    required this.name,
    required this.description,
    required this.examples,
    required this.translatedExamples,
  });

  factory Item.fromJson(String str) {
    final jsonData = json.decode(str);
    return _$ItemFromJson(jsonData);
  }

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
