import 'package:feather_icons_svg/feather_icons_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
              child: Center(
                child: InkWell(
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const FeatherIcon(
                              FeatherIcons.play,
                              strokeWidth: 1.5,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              progressState is ProgressStateActive
                                  ? 'Continue'.toUpperCase()
                                  : 'Play'.toUpperCase(),
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const SizedBox(
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      const _Line(),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _SecondaryButton(
                  onPressed: () {
                    context.go('/questions');
                  },
                  child: Text('Question list'.toUpperCase()),
                ),
                const SizedBox(width: 8),
                const Text('—'),
                const SizedBox(width: 8),
                _SecondaryButton(
                  onPressed: () {
                    context.go('/about');
                  },
                  child: Text('About'.toUpperCase()),
                ),
              ],
            ),
          ],
        ),
      ),
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

class _SecondaryButton extends StatelessWidget {
  const _SecondaryButton({
    Key? key,
    required this.child,
    this.onPressed,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.white),
        overlayColor: MaterialStateProperty.all(Colors.white10),
      ),
      child: child,
    );
  }
}
