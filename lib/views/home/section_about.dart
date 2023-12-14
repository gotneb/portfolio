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
          'assets/images/my_photo.jpg',
          width: 300,
          height: 300,
        ),
      ),
    );

    buildColumnData({bool showPhoto = false}) => SizedBox(
        height: showPhoto ? 750 : 300,
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
                  Text(Me.job, style: Style.subTitleStyle),
                  const Gap(8),
                  Flexible(child: Text(Me.about, style: Style.normalStyle)),
                ])));

    final background = Image.asset(
      'assets/images/art.jpg',
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
        Gap(0.42 * height),
        Row(
          children: [
            photo,
            const Gap(24),
            Flexible(child: buildColumnData()),
          ],
        ),
        const Gap(32),
        const ButtonsSection(),
      ],
    );

    if (width <= 850) {
      return Stack(
        children: [
          background,
          gradient(isLargeScreen: false),
          Padding(
            padding: EdgeInsets.fromLTRB(12, 0.45 * height, 12, 0),
            child: buildColumnData(showPhoto: true),
          ),
        ],
      );
    }

    final padding = EdgeInsets.symmetric(horizontal: 0.1 * width);

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
}
