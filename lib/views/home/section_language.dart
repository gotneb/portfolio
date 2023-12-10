import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/language.dart';
import 'package:portfolio/models/me.dart';
import 'package:portfolio/style.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

  static const double radius = 12;
  static const double photoRadius = 50;
  static const double height = 120;

  static final boxBorderRadius = BorderRadius.circular(radius);
  static const coloredBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(radius),
    bottomLeft: Radius.circular(radius),
  );

  Widget _buildCard(Language language) {
    Widget flag = CircleAvatar(
      radius: 24,
      foregroundImage: AssetImage(language.flag),
    );

    flag = Column(children: [const Gap(12), flag]);

    final coloredIndicator = Container(
      width: 10,
      height: height,
      decoration: const BoxDecoration(
        color: Style.sideColor,
        borderRadius: coloredBorderRadius,
      ),
    );

    final content =
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Gap(12),
      Text(language.name, style: Style.langTitle),
      const Gap(6),
      _buildProficiencyText(language.profiency,
          style: Style.langNormal.copyWith(
            fontSize: 12,
            color: Style.sideColor,
          )),
      const Gap(8),
      Text(Me.languages.first.greetings.first, style: Style.langNormal),
    ]);

    return Material(
      elevation: 12,
      color: Colors.transparent,
      child: Container(
        width: 300,
        height: height,
        decoration: BoxDecoration(
          color: Style.black2,
          borderRadius: boxBorderRadius,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              coloredIndicator,
              const Gap(12),
              flag,
              const Gap(12),
              content,
            ]),
      ),
    );
  }

  Widget _buildProficiencyText(
    String data, {
    TextStyle? style,
  }) =>
      Container(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
        decoration: const ShapeDecoration(
            shape: StadiumBorder(
          side: BorderSide(color: Style.sideColor),
        )),
        child: Text(data, style: style),
      );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    final photo = Material(
      elevation: 12,
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(photoRadius),
      child: const CircleAvatar(
        radius: photoRadius,
        foregroundImage: AssetImage('assets/images/seiji_amasawa.jpg'),
      ),
    );

    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
            margin: const EdgeInsets.only(right: 90, top: 28),
            padding: const EdgeInsets.all(12),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Style.black,
              borderRadius: boxBorderRadius,
            ),
            child: Wrap(
              spacing: 0.04 * width,
              runSpacing: 20,
              children: Me.languages.map((l) => _buildCard(l)).toList(),
            )),
        Positioned(
          right: photoRadius,
          child: photo,
        ),
      ],
    );
  }
}
