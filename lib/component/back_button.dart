import 'package:feather_icons_svg/feather_icons_svg.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pressable/pressable.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pressable.opacity(
      onPressed: () => context.pop(),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: FeatherIcon(
            FeatherIcons.arrowLeft,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
