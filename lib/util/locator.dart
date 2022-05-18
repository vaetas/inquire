import 'package:get_it/get_it.dart';
import 'package:inquire/repository/question_repository.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  final questionsRepository = QuestionRepository();
  await questionsRepository.load();
  locator.registerSingleton<QuestionRepository>(questionsRepository);
}
