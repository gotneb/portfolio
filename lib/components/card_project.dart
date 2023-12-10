import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/style.dart';

class CardProject extends StatefulWidget {
  const CardProject({
    super.key,
    required this.isTallerScreen,
    required this.project,
  });

  final Project project;
  final bool isTallerScreen;

  @override
  State<CardProject> createState() => _CardProjectState();
}

class _CardProjectState extends State<CardProject> {
  static final iconBorderRadius = BorderRadius.circular(12);
  var isMouseInside = false;

  List<Widget> _buildBadges() => widget.project.stack
      .map((e) => Material(
            elevation: 12,
            color: Colors.transparent,
            borderRadius: iconBorderRadius,
            child: Container(
                margin: const EdgeInsets.only(right: 14),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: iconBorderRadius,
                  color: isMouseInside
                      ? Colors.white
                      : Style.black.withOpacity(0.8),
                ),
                child: Center(
                    child: Icon(
                  e.logo,
                  color: isMouseInside
                      ? Style.black
                      : Colors.white.withOpacity(0.7),
                  size: 34,
                ))),
          ))
      .toList();

  Gradient _buildGradient() => const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.2, 0.8],
        colors: [Colors.deepPurpleAccent, Color(0xFF420adf)],
      );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    final side = widget.isTallerScreen ? height / 3.5 : width / 2.2;

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.project.title, style: Style.titleProject),
        const Gap(16),
        Flexible(
            child: Text(
          widget.project.description,
          softWrap: true,
          overflow: TextOverflow.fade,
          style: isMouseInside
              ? Style.descriptionProject
                  .copyWith(color: Style.mainColor.withOpacity(0.8))
              : Style.descriptionProject,
        )),
        const Gap(24),
        Row(children: _buildBadges()),
      ],
    );

    final box = Container(
      padding: const EdgeInsets.all(22),
      width: side,
      height: side,
      decoration: BoxDecoration(
        color: isMouseInside ? null : Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
            color: isMouseInside ? Style.sideColor : Style.greyColor),
        gradient: isMouseInside ? _buildGradient() : null,
      ),
      child: content,
    );

    return MouseRegion(
      onEnter: (event) => setState(() {
        isMouseInside = true;
      }),
      onExit: (event) => setState(() {
        isMouseInside = false;
      }),
      cursor: SystemMouseCursors.click,
      child: Material(
          elevation: 12,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(18),
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 300),
            child: box,
          )),
    );
  }
}
