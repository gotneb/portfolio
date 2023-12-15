import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:portfolio/style.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  static final borderRadius = BorderRadius.circular(6);

  Widget _buildButton({
    required String text,
    required IconData icon,
  }) {
    final button = Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(
        color: Style.sideColor,
        borderRadius: borderRadius,
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        FaIcon(icon, color: Colors.white, size: 44),
        const Gap(16),
        Container(width: 1, height: 44, color: Colors.white),
        const Gap(16),
        Text(text, style: Style.normalStyle),
      ]),
    );

    return Material(
      borderRadius: borderRadius,
      color: Colors.transparent,
      elevation: 12,
      child: button,
    );
  }

  @override
  Widget build(BuildContext context) {
    final buttons = {
      'View my linkedIn profile': FontAwesomeIcons.linkedin,
      'GitHub': FontAwesomeIcons.github,
      'Contact me': BoxIcons.bx_chat,
    };

    return Wrap(
        spacing: 35,
        runSpacing: 20,
        children: buttons.entries
            .map((e) => _buildButton(
                  text: e.key,
                  icon: e.value,
                ))
            .toList());
  }
}
