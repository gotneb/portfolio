import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/me.dart';

import 'package:portfolio/style.dart';
import 'package:portfolio/views/home/section_buttons.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
    required this.useFullScreen,
  });

  final bool useFullScreen;

  static final borderRadius = BorderRadius.circular(20);

  static final _backgrounds = [
    // 'assets/images/bg_0.jpg',
    // 'assets/images/bg_1.jpg',
    'assets/images/bg_2.gif',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    final photo = Material(
      borderRadius: borderRadius,
      color: Colors.transparent,
      elevation: 12,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(
          'assets/images/me_05.jpg',
          width: 300,
          height: 300,
        ),
      ),
    );

    buildColumnData({bool showPhoto = false}) => SizedBox(
        height: showPhoto ? 780 : 300,
        child: Padding(
            padding: const EdgeInsets.only(right: 80.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (showPhoto) ...[
                    photo,
                    const Gap(24),
                  ],
                  Text(
                    Me.name,
                    style: Style.titleStyle,
                  ),
                  const Gap(8),
                  DefaultTextStyle(
                      style: Style.subTitleStyle,
                      child: AnimatedTextKit(
                          repeatForever: true,
                          pause: const Duration(seconds: 6),
                          animatedTexts: Me.job
                              .map((expertise) => TypewriterAnimatedText(
                                    expertise,
                                    curve: Curves.ease,
                                    speed: const Duration(milliseconds: 260),
                                  ))
                              .toList())),
                  const Gap(10),
                  Flexible(child: Text(Me.about, style: Style.homeDescription)),
                ])));

    final background = Image.asset(
      _getBackground(),
      width: width,
      height: 0.7 * height,
      fit: BoxFit.cover,
    );

    gradient({required bool isLargeScreen}) => Container(
          width: width,
          height: 0.7 * height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: isLargeScreen ? [0.3, 0.7] : [0.7, 0.9],
                colors: const [Colors.transparent, Style.background]),
          ),
        );

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(0.46 * height),
        Row(
          children: [
            photo,
            const Gap(32),
            Flexible(child: buildColumnData()),
          ],
        ),
        const Gap(32),
        const ButtonsSection(),
      ],
    );

    if (width <= 880) {
      return Stack(
        children: [
          background,
          gradient(isLargeScreen: false),
          Padding(
              padding: EdgeInsets.fromLTRB(12, 0.45 * height, 12, 0),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildColumnData(showPhoto: true),
                    const Gap(8),
                    const ButtonsSection(),
                  ])),
        ],
      );
    }

    final double paddingWidth = width > 1500 ? 0.1 * width : 16;
    final padding = EdgeInsets.symmetric(horizontal: paddingWidth);

    return Stack(children: [
      background,
      Positioned(
        bottom: -2,
        child: gradient(isLargeScreen: true),
      ),
      Padding(
        padding: padding,
        child: content,
      ),
    ]);
  }

  String _getBackground() =>
      _backgrounds[Random().nextInt(_backgrounds.length)];
}
