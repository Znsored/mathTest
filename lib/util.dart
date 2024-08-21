import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<Map<String, List<String>>> loadJsonData(int chapter) async {
  String jsonString = await rootBundle.loadString('assets/matchGame/chapter$chapter.json');
  Map<String, dynamic> jsonMap = json.decode(jsonString);
  List<String> spanish = List<String>.from(jsonMap['spanish']);
  List<String> english = List<String>.from(jsonMap['english']);
  return {'spanish': english, 'english': spanish};
}