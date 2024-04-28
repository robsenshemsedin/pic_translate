// ignore_for_file: constant_identifier_names

enum Languages {
  Arabic,
  Italian,
  German,
  Spanish,
  Chinese,
  French,
  Russian,
  Portuguese,
  Japanese,
  Hindi
}

Languages languesFromString(String name) {
  return Languages.values.firstWhere(
      (element) => element.name.toLowerCase() == name.toLowerCase(),
      orElse: () => throw Exception());
}
