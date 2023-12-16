import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/components/social_button.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final buttons = {
      'View my linkedIn profile': FontAwesomeIcons.linkedin,
      'GitHub': FontAwesomeIcons.github,
      'Contact me': BoxIcons.bx_chat,
    };

    final urls = {
      'View my linkedIn profile': 'https://www.linkedin.com/in/gabriel-bento-da-silva/',
      'GitHub': 'https://github.com/gotneb',
      'Contact me': '',
    };

    return Wrap(
        spacing: 35,
        runSpacing: 20,
        children: buttons.entries
            .map((e) => SocialButton(
                  content: e.key,
                  icon: e.value,
                  link: urls[e.key]!,
                ))
            .toList());
  }
}
