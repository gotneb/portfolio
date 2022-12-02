import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/projects.dart';
import 'package:url_launcher/url_launcher.dart';

class BannerProject extends StatefulWidget {
  const BannerProject({
    super.key,
    required this.project,
    required this.imagePath,
    required this.bg,
    required this.normalStyle,
    required this.smallStyle,
    required this.repository,
  });

  final Color bg;
  final TextStyle normalStyle;
  final TextStyle smallStyle;

  final String imagePath;
  final Project project;
  final String repository;

  @override
  State<BannerProject> createState() => _BannerProjectState();
}

class _BannerProjectState extends State<BannerProject> {
  var _isMouseAbove = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isMouseAbove = !_isMouseAbove;
      }),
      onExit: (_) => setState(() {
        _isMouseAbove = !_isMouseAbove;
      }),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 8, 0, 8),
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 300,
            height: 340,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(widget.project.title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 24,
                          letterSpacing: 1,
                        )),
                  ),
                  AnimatedOpacity(
                    curve: Curves.linear,
                    duration: const Duration(milliseconds: 700),
                    opacity: _isMouseAbove ? 0 : 1.0,
                    child: Image.asset(widget.imagePath, height: 190),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                            IconButton(
                              padding: const EdgeInsets.all(0),
                              tooltip: 'Source Code',
                              onPressed: () async =>
                                  await launchUrl(Uri.parse(widget.repository)),
                              icon: const Icon(Icons.code, size: 22),
                            ),
                          ],
                        ),
                        const SizedBox(width: 12),
                        const Spacer(),
                        AnimatedContainer(
                          curve: Curves.decelerate,
                          duration: const Duration(seconds: 1),
                          width: _isMouseAbove ? 120 : 0,
                          height: 66,
                          decoration: BoxDecoration(
                            color: widget.bg,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(12, 8, 0, 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List<Text>.generate(
                                widget.project.techStack.length,
                                (index) => Text(
                                  widget.project.techStack[index],
                                  style: widget.smallStyle,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ]),
          ),
          AnimatedContainer(
            curve: Curves.decelerate,
            duration: const Duration(seconds: 1),
            margin: const EdgeInsets.only(top: 60),
            padding: const EdgeInsets.all(16.0),
            width: _isMouseAbove ? 280 : 0,
            height: 160,
            decoration: BoxDecoration(
              color: widget.bg,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.project.description,
                  style: widget.normalStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
