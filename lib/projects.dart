import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/project_banner.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  static const projects = [
    Project(
        title: 'Youtube Downloader',
        description:
            'This is android aplication created to download videos and audio from youtube.',
        techStack: ['Flutter']),
    Project(
        title: 'Web Scrapping Api',
        description:
            'This project was a simple web scraper which scrape manga (a japanese draw) pages from other sites. For a better performance the whole data were saved on MongoDB and hosted on Heroku.',
        techStack: ['Golang', 'MongoDB', 'Heroku']),
    Project(
        title: 'Electric Simulator',
        description:
            'This project has the aim to be a simulator and help college students from electrical course to have a better understand about electric circuits concepts.',
        techStack: ['C#', 'Windows Forms']),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      color: const Color.fromARGB(255, 30, 30, 30),
      child: Column(
        children: [
          ..._buildHeader(width, height),
          SizedBox(
            width: width,
            child: _buildProjectsSection(),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildHeader(double width, double height) => [
        SizedBox(height: 0.1 * height),
        _buildDecorationLines(screenWidth: width, screenHeight: height),
        Text(
          'Projects',
          style: GoogleFonts.palanquinDark(
            color: Colors.indigo,
            fontSize: 70,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(height: 0.05 * height),
      ];

  Widget _buildProjectsSection() => SingleChildScrollView(
        child: Wrap(
          spacing: 100,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          children: [
            BannerProject(
                project: projects[0], imagePath: 'assets/images/mobile.png'),
            BannerProject(
                project: projects[1],
                imagePath: 'assets/images/search_engine.png'),
            BannerProject(
                project: projects[2], imagePath: 'assets/images/website.png'),
          ],
        ),
      );

  Widget _buildDecorationLines({
    required double screenWidth,
    required double screenHeight,
  }) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Spacer(),
          Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.indigo)),
          const SizedBox(width: 16),
          Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.indigo)),
          const SizedBox(width: 16),
          Container(
            width: 0.8 * screenWidth,
            height: 6,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Spacer(),
        ],
      );
}

class Project {
  const Project({
    required this.title,
    required this.description,
    required this.techStack,
  });

  final String title;
  final String description;
  final List<String> techStack;
}
