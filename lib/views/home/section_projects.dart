import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/me.dart';
import 'package:portfolio/models/project.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  Widget _buildCard(
    double width,
    double height, {
    required Project project,
    required bool isTallerScreen,
  }) {
    final side = isTallerScreen ? height / 3.5 : width / 2.2;

    final badges = project.stack
        .map((e) => Padding(
          padding: const EdgeInsets.only(right: 12),
              child: e.logo,
            ))
        .toList();

    return Container(
      padding: const EdgeInsets.all(12),
      width: side,
      height: side,
      color: Colors.grey,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(project.title),
        const Gap(16),
        Flexible(
          child: Text(
            project.description,
            softWrap: true,
            overflow: TextOverflow.fade,
          ),
        ),
        const Gap(24),
        Row(children: badges),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    final isTallerScreen = width >= 780;

    final projects = Me.projects
        .map((p) => _buildCard(
              width,
              height,
              project: p,
              isTallerScreen: isTallerScreen,
            ))
        .toList();

    return Container(
      color: Colors.orange,
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: projects,
      ),
    );
  }
}
