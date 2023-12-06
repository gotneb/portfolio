import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/views/home/section_about.dart';
import 'package:portfolio/views/home/section_buttons.dart';
import 'package:portfolio/views/home/section_language.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  Widget _buildTitle({
    required String title,
    required String hiragana,
  }) =>
      Row(children: [
        Text(title),
        const Gap(12),
        Text(hiragana),
      ]);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return ListView(
      shrinkWrap: true,
      children: [
        Gap(0.1 * height),
        const AboutSection(),
        const Gap(16),
        const ButtonsSection(),
        const Gap(16),
        _buildTitle(title: 'Languages', hiragana: '私が話す言語'),
        const Gap(16),
        const LanguageSection(),
        const Gap(16),
        _buildTitle(title: 'Projects', hiragana: 'プロジェクト'),
      ],
    );
  }
}
