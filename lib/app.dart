import 'package:blur/blur.dart';
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

    final background = Image.asset(
      'assets/images/background.png',
      width: width,
      height: height,
      fit: BoxFit.cover,
    ).blurred(
      blur: 15,
      blurColor: Colors.black,
    );

    final black = Container(
      width: width,
      height: height,
      color: Colors.black.withOpacity(0.5),
    );

    if (width < 1500) {
      return Stack(alignment: Alignment.bottomCenter, children: [
        background,
        black,
        _buildCenter(width, height, useFullWidth: true),
      ]);
    }

    final content = Row(children: [
      _buildLeftPanel(width, height, title: 'FOLIO', hiragana: 'ポートフォリオ'),
      _buildCenter(width, height),
      _buildRightPanel(width, height, title: 'ABOUT', hiragana: 'この人について'),
    ]);

    return Stack(alignment: Alignment.bottomCenter, children: [
      background,
      black,
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
      SizedBox(
        width: 0.1 * width,
        height: height,
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
