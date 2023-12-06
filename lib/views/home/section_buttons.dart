import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  Widget _buildButton({
    required String text,
    required IconData icon,
  }) =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        color: Colors.red,
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Icon(icon, color: Colors.white),
          const Gap(8),
          Text(text),
        ]),
      );

  @override
  Widget build(BuildContext context) {
    final buttons = {
      'LinkedIn': Icons.home,
      'GitHub': Icons.home,
      'Contact': Icons.home,
    };

    return Wrap(
        spacing: 20,
        runSpacing: 10,
        children: buttons.entries
            .map((e) => _buildButton(
                  text: e.key,
                  icon: e.value,
                ))
            .toList());
  }
}
