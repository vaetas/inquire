import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/services.dart';

import '/model/question/question.dart';

class QuestionRepository {
  QuestionRepository();

  late final List<Question> _questions;

  Future<void> load() async {
    _questions = await _loadQuestions('en');
  }

  Question getQuestion(int id) {
    return _questions[id];
  }

  List<Question> getQuestions() {
    return _questions;
  }
}

Future<List<Question>> _loadQuestions(String lang) async {
  final data = await rootBundle.loadString('assets/questions/$lang.json');
  final parsed = jsonDecode(data) as List<dynamic>;
  final questions = parsed.mapIndexed((i, dynamic e) {
    return Question(
      id: i,
      text: e['text']! as String,
    );
  }).toList();

  return questions;
}
