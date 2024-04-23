// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      name: json['name'] as String,
      description: json['description'] as String,
      examples:
          (json['examples'] as List<dynamic>).map((e) => e as String).toList(),
      translatedExamples: (json['translated_examples'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'examples': instance.examples,
      'translated_examples': instance.translatedExamples,
    };
