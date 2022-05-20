import 'package:flutter/material.dart';

class SliverGap extends StatelessWidget {
  const SliverGap(this.height, {Key? key}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(height: height),
    );
  }
}
