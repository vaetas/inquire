import 'package:feather_icons_svg/feather_icons_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:inquire/component/secondary_button.dart';
import 'package:inquire/model/progress_state/progress_state.dart';
import 'package:inquire/provider/progress_provider.dart';
import 'package:inquire/util/log.dart';
import 'package:inquire/util/palette.dart';

class HomeScreen extends ConsumerWidget with LogMixin {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progressState = ref.watch(progressProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inquire.',
          style: TextStyle(
            fontFamily: Palette.serifFont,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (progressState is ProgressStateActive) {
                        log('Resuming previous game...');
                      } else {
                        ref.read(progressProvider.notifier).start();
                      }

                      context.go('/game');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const _Line(),
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Text(
                            progressState is ProgressStateActive
                                ? 'Continue'.toUpperCase()
                                : 'Play'.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const _Line(),
                      ],
                    ),
                  ),
                  if (progressState is ProgressStateActive)
                    _ResetButton(
                      onPressed: () {
                        ref.read(progressProvider.notifier).reset();
                      },
                    )
                  else
                    const SizedBox(height: 48),
                ],
              ),
            ),
            const _Footer(),
          ],
        ),
      ),
    );
  }
}

class _ResetButton extends StatelessWidget {
  const _ResetButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SecondaryButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const FeatherIcon(
            FeatherIcons.repeat,
            size: 16,
          ),
          const SizedBox(width: 8),
          Text(
            'New game'.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SecondaryButton(
          onPressed: () {
            context.go('/questions');
          },
          child: Text('Question list'.toUpperCase()),
        ),
        const SizedBox(width: 8),
        const Text('—'),
        const SizedBox(width: 8),
        SecondaryButton(
          onPressed: () {
            context.go('/about');
          },
          child: Text('About'.toUpperCase()),
        ),
      ],
    );
  }
}

class _Line extends StatelessWidget {
  const _Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white24,
      width: double.infinity,
      height: 1,
    );
  }
}
