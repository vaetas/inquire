import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:inquire/model/progress_state/progress_state.dart';
import 'package:inquire/provider/progress_provider.dart';
import 'package:inquire/util/log.dart';

class HomeScreen extends ConsumerWidget with LogMixin {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progressState = ref.watch(progressProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inquire'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              if (progressState is ProgressStateActive) {
                log('Resuming previous game...');
              } else {
                ref.read(progressProvider.notifier).start();
              }

              context.go('/game');
            },
            child: const Text('Start'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/questions');
            },
            child: const Text('Question list'),
          ),
        ],
      ),
    );
  }
}
