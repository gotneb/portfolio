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
      'assets/images/art.jpg',
      width: width,
      height: height,
      fit: BoxFit.cover,
    ).blurred(
      blur: 15,
      blurColor: Colors.black,
    );

    if (width < 1500) {
      return Stack(alignment: Alignment.bottomCenter, children: [
        background,
        _buildCenter(width, height, useFullWidth: true),
      ]);
    }

    // final content = Row(children: [
    //   //_buildLeftPanel(width, height, title: 'FOLIO', hiragana: 'ポートフォリオ'),
    //   _buildCenter(width, height),
    //   //_buildRightPanel(width, height, title: 'ABOUT', hiragana: 'この人について'),
    // ]);

    final content = _buildCenter(width, height);

    return Stack(
      children: [
        background,
        content,
        Align(
          alignment: Alignment.centerLeft,
          child: _buildLeftPanel(width, height,
              title: 'FOLIO', hiragana: 'ポートフォリオ'),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: _buildRightPanel(width, height,
              title: 'ABOUT', hiragana: 'この人について'),
        ),
      ],
    );
  }

  Widget _buildCenter(
    double width,
    double height, {
    bool useFullWidth = false,
  }) =>
      Container(
        padding: EdgeInsets.symmetric(horizontal: useFullWidth ? 12 : 0.1 * width),
        width: width,
        height: height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.4, 0.55],
            colors: [Colors.transparent, Style.black2]
          ),
        ),
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
