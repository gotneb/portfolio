import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  Widget _buildButton({
    required String text,
    required IconData icon,
  }) =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        color: Colors.red,
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          FaIcon(icon, color: Colors.white, size: 44),
          const Gap(16),
          Container(width: 1, height: 44, color: Colors.black),
          const Gap(16),
          Text(text),
        ]),
      );

  @override
  Widget build(BuildContext context) {
    final buttons = {
      'LinkedIn': FontAwesomeIcons.linkedin,
      'GitHub': FontAwesomeIcons.github,
      'Contact': FontAwesomeIcons.inbox,
    };

    return Wrap(
        spacing: 35,
        runSpacing: 10,
        children: buttons.entries
            .map((e) => _buildButton(
                  text: e.key,
                  icon: e.value,
                ))
            .toList());
  }
}
