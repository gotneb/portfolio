import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/components/social_button.dart';
import 'package:portfolio/models/me.dart';
import 'package:portfolio/style.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    const buttons = [
      SocialButton(
        content: 'View my linkedIn profile',
        icon: FontAwesomeIcons.linkedin,
        link: 'https://www.linkedin.com/in/gabriel-bento-da-silva/',
        color: Style.sideColor,
        backgroundColor: Colors.white,
      ),
      SocialButton(
        content: 'GitHub',
        icon: FontAwesomeIcons.github,
        link: 'https://github.com/gotneb',
      ),
      SocialButton(
        content: 'Contact me',
        icon: BoxIcons.bx_chat,
        link: 'mailto:${Me.email}?subject=${Me.subject}&body=${Me.body}',
      ),
    ];

    return const Wrap(
      spacing: 35,
      runSpacing: 20,
      children: buttons,
    );
  }
}
