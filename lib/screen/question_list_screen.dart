import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inquire/model/question/question.dart';
import 'package:inquire/provider/question_list_provider.dart';

class QuestionListScreen extends ConsumerWidget {
  const QuestionListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questions = ref.watch(questionListProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Question list'),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final q = questions[index];
                return QuestionTile(question: q);
              },
              childCount: questions.length,
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionTile extends StatelessWidget {
  const QuestionTile({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(question.text),
    );
  }
}
