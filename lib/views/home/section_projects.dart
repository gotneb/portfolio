import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/me.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/style.dart';

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

    return Material(
      elevation: 12,
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        padding: const EdgeInsets.all(22),
        width: side,
        height: side,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Style.greyColor),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(project.title, style: Style.titleProject),
          const Gap(16),
          Flexible(
              child: Text(
            project.description,
            softWrap: true,
            overflow: TextOverflow.fade,
            style: Style.descriptionProject,
          )),
          const Gap(24),
          Row(children: badges),
        ]),
      ),
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

    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: projects,
    );
  }
}
