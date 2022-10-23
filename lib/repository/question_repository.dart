import 'package:collection/collection.dart';
import 'package:csv/csv.dart';
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
  final data = await rootBundle.loadString('assets/questions.csv');
  final parsed = const CsvToListConverter().convert<dynamic>(data);
  final questions = parsed.sublist(1).mapIndexed((i, dynamic e) {
    final id = e[0] as int;
    final text = e[1] as String;
    return Question(
      id: id,
      text: text,
    );
  }).toList();

  return questions;
}
