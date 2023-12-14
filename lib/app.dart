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

    // final background = Image.asset(
    //   'assets/images/art.jpg',
    //   width: width,
    //   height: height,
    //   fit: BoxFit.cover,
    // ).blurred(
    //   blur: 15,
    //   blurColor: Colors.black,
    // );

    if (width < 1500) {
      return Stack(alignment: Alignment.bottomCenter, children: [
        _buildCenter(width, height, useFullWidth: true),
      ]);
    }

    final leftPanel = _buildLeftPanel(
      width,
      height,
      title: 'FOLIO',
      hiragana: 'ポートフォリオ',
    );
    final rightPanel = _buildRightPanel(
      width,
      height,
      title: 'ABOUT',
      hiragana: 'この人について',
    );
    final content = _buildCenter(width, height);

    return Stack(children: [
      content,
      Align(alignment: Alignment.centerLeft, child: leftPanel),
      Align(alignment: Alignment.centerRight, child: rightPanel),
    ]);
  }

  Widget _buildCenter(
    double width,
    double height, {
    bool useFullWidth = false,
  }) =>
      SizedBox(
        width: width,
        height: height,
        child: HomeView(useFullScreen: useFullWidth),
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
      backgroundColor: Style.background,
      body: _buildBody(context),
    );
  }
}
