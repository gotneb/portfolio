import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:gap/gap.dart';
import 'package:portfolio/views/home/home.dart';

import 'style.dart';

class App extends StatelessWidget {
  const App({super.key});

  Widget _buildBody(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    if (width < 1500) {
      return _buildCenter(width, height, useFullWidth: true);
    }

    final background = Image.asset(
      'assets/images/background.png',
      width: width,
      height: height,
    );

    final content = Row(children: [
      _buildLeftPanel(width, height, title: 'FOLIO', hiragana: 'ポートフォリオ'),
      _buildCenter(width, height),
      _buildRightPanel(width, height, title: 'ABOUT', hiragana: 'この人について'),
    ]);

    return Stack(children: [
      background,
      content,
    ]);
  }

  Widget _buildCenter(
    double width,
    double height, {
    bool useFullWidth = false,
  }) =>
      Container(
        width: useFullWidth ? width : .8 * width,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: height,
        color: Colors.orange,
        child: const HomeView(),
      );

  Widget _buildRightPanel(
    double width,
    double height, {
    required String title,
    required String hiragana,
  }) =>
      _buildSidePanel(
        width,
        height,
        title: title,
        hiragana: hiragana,
        textRotation: math.pi / 2,
      );

  Widget _buildLeftPanel(
    double width,
    double height, {
    required String title,
    required String hiragana,
  }) =>
      _buildSidePanel(
        width,
        height,
        title: title,
        hiragana: hiragana,
        textRotation: -math.pi / 2,
      );

  Widget _buildSidePanel(
    double width,
    double height, {
    required String title,
    required String hiragana,
    required double textRotation,
  }) =>
      Container(
        width: 0.1 * width,
        height: height,
        color: Colors.grey,
        child: Transform.rotate(
          angle: textRotation,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title, style: Style.sideTitle),
                const Gap(8),
                Text(hiragana, style: Style.japaneseSideTitle),
              ]),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }
}
