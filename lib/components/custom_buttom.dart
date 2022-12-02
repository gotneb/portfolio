import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  const HoverButton({
    super.key,
    required this.child,
    required this.onTap,
    required this.hoverColor,
  });

  final Widget child;
  final Color hoverColor;
  final void Function() onTap;

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  var _isMouseAbove = false;
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: widget.onTap,
        child: MouseRegion(
          onEnter: (_) => setState(() {
            _isMouseAbove = !_isMouseAbove;
          }),
          onExit: (_) => setState(() {
            _isMouseAbove = !_isMouseAbove;
          }),
          child: AnimatedScale(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOutCubic,
            scale: _isMouseAbove ? 1.1 : 1.0,
            child: AnimatedContainer(
              curve: Curves.easeOutCubic,
              duration: const Duration(milliseconds: 500),
              padding: const EdgeInsets.all(12.0),
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                color: _isMouseAbove ? widget.hoverColor : Colors.indigo,
                borderRadius: BorderRadius.circular(40),
              ),
              child: widget.child,
            ),
          ),
        ),
      );
}
