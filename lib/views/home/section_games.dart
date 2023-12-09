import 'package:flutter/material.dart';

class GamesSection extends StatelessWidget {
  const GamesSection({super.key});

  Widget _buildCard(
    double width,
    double height, {
    required bool isTallerScreen,
  }) {
    final side = isTallerScreen ? height / 3.5 : width / 2.2;

    return Container(
      padding: const EdgeInsets.all(12),
      width: side,
      height: side,
      color: Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    final isTallerScreen = width >= 780;

    final children = List.generate(
        5,
        (_) => _buildCard(
              width,
              height,
              isTallerScreen: isTallerScreen,
            ));

    return Container(
      color: Colors.orange,
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: children,
      ),
    );
  }
}
