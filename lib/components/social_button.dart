import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/style.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({
    super.key,
    required this.content,
    required this.icon,
    required this.link,
  });

  static final borderRadius = BorderRadius.circular(6);

  final String content;
  final IconData icon;
  final String link;

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  static const padding = EdgeInsets.symmetric(horizontal: 18, vertical: 8);

  var isMouseInside = false;

  @override
  Widget build(BuildContext context) {
    final content = [
      FaIcon(widget.icon, color: Colors.white, size: 44),
      const Gap(16),
      Container(width: 1, height: 44, color: Colors.white),
      const Gap(16),
      Text(widget.content, style: Style.normalStyle),
    ];

    final button = Container(
      padding: padding,
      decoration: BoxDecoration(
          color: Style.sideColor,
          borderRadius: SocialButton.borderRadius,
          border: Border.all(
            color: isMouseInside ? Colors.blue[900]! : Colors.transparent,
          )),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: content,
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
      child: GestureDetector(
        onTap: openLink,
        child: Material(
          borderRadius: SocialButton.borderRadius,
          color: isMouseInside ? Colors.white : Colors.transparent,
          shadowColor: isMouseInside ? Style.sideColor : null,
          elevation: 12,
          child: button,
        ),
      ),
    );
  }

  Future<void> openLink() async {
    await launchUrlString(widget.link);
  }
}
