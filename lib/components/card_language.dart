import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/language.dart';
import 'package:portfolio/style.dart';

class CardLanguage extends StatefulWidget {
  const CardLanguage({
    super.key,
    required this.language,
    required this.height,
    required this.width,
  });

  final Language language;
  final double height;
  final double width;

  @override
  State<CardLanguage> createState() => _CardLanguageState();
}

class _CardLanguageState extends State<CardLanguage> {
  static const double radius = 16;
  static final boxBorderRadius = BorderRadius.circular(radius);
  static const coloredBorderRadius = BorderRadius.only(
    topLeft: Radius.circular(radius),
    bottomLeft: Radius.circular(radius),
  );

  static const duration = Duration(milliseconds: 500);
  static const curve = Curves.decelerate;

  var isMouseInside = false;

  Widget _buildProficiencyText(
    String data, {
    TextStyle? style,
  }) =>
      Container(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
        decoration: const ShapeDecoration(
            shape: StadiumBorder(
          side: BorderSide(color: Style.sideColor),
        )),
        child: Text(data, style: style),
      );

  @override
  Widget build(BuildContext context) {
    Widget flag = CircleAvatar(
      radius: 32,
      foregroundImage: AssetImage(widget.language.flag),
    );

    flag = Column(children: [const Gap(12), flag]);

    final coloredIndicator = Container(
      width: 10,
      height: widget.height,
      decoration: const BoxDecoration(
        color: Style.sideColor,
        borderRadius: coloredBorderRadius,
      ),
    );

    final animText = DefaultTextStyle(
      style: Style.langNormal,
      child: AnimatedTextKit(
        animatedTexts: widget.language.greetings
            .map((e) => FadeAnimatedText(
                  e,
                  duration: const Duration(seconds: 8),
                ))
            .toList(),
        pause: const Duration(milliseconds: 300),
        repeatForever: true,
      ),
    );

    final proficiencyText = _buildProficiencyText(widget.language.profiency,
        style: Style.langNormal.copyWith(
          fontSize: 12,
          color: Style.sideColor,
        ));

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(8),
        Row(children: [
          Text(widget.language.name, style: Style.langTitle),
          //const Gap(8),
          const Spacer(),
          proficiencyText,
        ]),
        const Gap(4),
        animText,
      ],
    );

    final row = Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          coloredIndicator,
          const Gap(16),
          Flexible(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(mainAxisSize: MainAxisSize.min, children: [
                flag,
                const Gap(24),
                Flexible(child: content),
              ]),
              const Gap(16),
              Text(widget.language.description, style: Style.langDescription),
            ]),
          ),
          const Gap(16),
        ]);

    final card = ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 350),
      child: AnimatedContainer(
        duration: duration,
        curve: curve,
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: isMouseInside ? Style.blue : Style.blue2,
          border: Border.all(
            color: Colors.white.withOpacity(0.1),
          ),
          borderRadius: boxBorderRadius,
        ),
        child: row,
      ),
    );

    return Material(
      elevation: 12,
      color: Colors.transparent,
      child: MouseRegion(
          onEnter: onEnter,
          onExit: onExit,
          child: Transform.translate(
            offset: Offset(0, isMouseInside ? -16 : 0),
            child: card,
          )),
    );
  }

  void onEnter(PointerEnterEvent e) => setState(() {
        isMouseInside = true;
      });

  void onExit(PointerExitEvent e) => setState(() {
        isMouseInside = false;
      });
}
