import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/component/back_button.dart';
import '/component/sliver_gap.dart';
import '/model/question/question.dart';
import '/provider/question_list_provider.dart';

class QuestionListScreen extends ConsumerWidget {
  const QuestionListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questions = ref.watch(questionListProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Question list'.toUpperCase(),
              style: const TextStyle(fontSize: 16),
            ),
            pinned: true,
            elevation: 10,
            leading: const CustomBackButton(),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(2),
              child: Container(
                color: Colors.white24,
                width: double.infinity,
                height: 1,
              ),
            ),
          ),
          const SliverGap(24),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final q = questions[index];
                return QuestionTile(question: q);
              },
              childCount: questions.length,
            ),
          ),
          const SliverGap(64),
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
