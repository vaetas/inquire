import 'dart:io';

import 'package:feather_icons_svg/feather_icons_svg.dart';
import 'package:flutter/material.dart';
import 'package:inquire/component/back_button.dart';
import 'package:pressable/pressable.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SliverAppBar(
              title: Text(
                'About this app'.toUpperCase(),
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
            SliverToBoxAdapter(
              child: ListTile(
                title: const Text('GitHub repository'),
                subtitle: const Text('See the source code'),
                trailing: const FeatherIcon(
                  FeatherIcons.link,
                  strokeWidth: 1.5,
                  color: Colors.white,
                ),
                onTap: () async {
                  final url = Uri.parse('https://github.com/vaetas/inquire');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                  }
                },
              ),
            ),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: _Footer(),
            )
          ],
        ),
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Pressable.opacity(
        onPressed: () async {
          final url = Uri.parse('https://www.vojtech.net/');
          if (await canLaunchUrl(url)) {
            await launchUrl(url, mode: LaunchMode.externalApplication);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Made with ❤️${Platform.isIOS ? '' : ' '}by Vojtech Pavlovsky',
          ),
        ),
      ),
    );
  }
}
