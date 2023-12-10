import 'package:flutter/material.dart';
import 'package:portfolio/components/card_project.dart';
import 'package:portfolio/models/me.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isTallerScreen = width >= 780;

    final projects = Me.projects
        .map((p) => CardProject(
              isTallerScreen: isTallerScreen,
              project: p,
            ))
        .toList();

    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: projects,
    );
  }
}
