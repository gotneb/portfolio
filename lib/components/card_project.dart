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
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: iconBorderRadius,
                    color: isMouseInside ? Colors.white : null,
                    gradient: isMouseInside ? null : _buildIconGradient()),
                child: Center(
                    child: Icon(
                  e.logo,
                  color: isMouseInside ? Style.black : Colors.white,
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

  Gradient _buildIconGradient() => LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        stops: const [0.1, 0.5],
        colors: [Colors.blueAccent[700]!, Colors.blue],
      );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    final side = widget.isTallerScreen ? height / 3.1 : width / 2.2;

    final content = Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.project.title, style: Style.titleProject),
        const Gap(16),
        Flexible(
            child: Text(
          widget.project.description,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          maxLines: 13,
          style: isMouseInside
              ? Style.descriptionProject
                  .copyWith(color: Style.mainColor.withOpacity(0.8))
              : Style.descriptionProject,
        )),
        const Gap(20),
        Row(children: _buildBadges()),
      ],
    );

    final box = GestureDetector(
      onTap: () => _showWarningDialog(),
      child: Container(
        padding: const EdgeInsets.all(22),
        width: side,
        height: 400,
        decoration: BoxDecoration(
          color: isMouseInside ? null : Style.blue2,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
              color: isMouseInside
                  ? Colors.deepPurpleAccent
                  : Colors.white.withOpacity(0.1)),
          gradient: isMouseInside ? _buildGradient() : null,
        ),
        child: content,
      ),
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
            constraints: const BoxConstraints(minHeight: 350, minWidth: 350),
            child: box,
          )),
    );
  }

  Future<void> _showWarningDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Style.blue2,
            title: Text(
              '⚠️ The design of this page isn\'t done yet... ⚠️',
              style: Style.normalJpTitleStyle,
            ),
            content: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://64.media.tumblr.com/a30241de82d4801b10194674ccf46349/4dcdba1494f76bfa-02/s540x810/67dc7e8df94c9b0b50b46b79d3cfdb3494ffce05.gif',
                width: 540,
                height: 290,
              ),
            ),
            actions: [
              TextButton(
                child: const Text('Gotcha',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    )),
                onPressed: () => Navigator.of(context).pop(),
              )
            ]);
      },
    );
  }
}
