import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:gap/gap.dart';
import 'package:portfolio/views/home/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  Widget _buildBody(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    if (width < 1500) {
      return _buildCenter(width, height, useFullWidth: true);
    }

    return Row(children: [
      _buildLeftPanel(width, height, title: 'FOLIO', hiragana: 'ポートフォリオ'),
      _buildCenter(width, height),
      _buildRightPanel(width, height, title: 'ABOUT', hiragana: 'この人について'),
    ]);
  }

  Widget _buildCenter(
    double width,
    double height, {
    bool useFullWidth = false,
  }) =>
      Container(
        width: useFullWidth ? width : .8 * width,
        padding: const EdgeInsets.symmetric(horizontal: 64),
        height: height,
        color: Colors.blue,
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
                Text(title),
                const Gap(8),
                Text(hiragana),
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
