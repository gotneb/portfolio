import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/views/home/section_about.dart';
import 'package:portfolio/views/home/section_buttons.dart';
import 'package:portfolio/views/home/section_language.dart';
import 'package:portfolio/views/home/section_projects.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  Widget _buildHiragana(String text) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: const ShapeDecoration(
          shape: StadiumBorder(),
          color: Colors.white,
        ),
        child: Text(text),
      );

  Widget _buildTitle({
    required String title,
    required String hiragana,
  }) =>
      Row(children: [
        Text(title),
        const Gap(12),
        _buildHiragana(hiragana),
      ]);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return ListView(
      shrinkWrap: true,
      children: [
        Gap(0.1 * height),
        const AboutSection(),
        const Gap(32),
        const ButtonsSection(),
        const Gap(32),
        _buildTitle(title: 'Languages', hiragana: '私が話す言語'),
        const Gap(32),
        const LanguageSection(),
        const Gap(32),
        _buildTitle(title: 'Projects', hiragana: 'プロジェクト'),
        const Gap(32),
        const ProjectsSection(),
        const Gap(48),
      ],
    );
  }
}
