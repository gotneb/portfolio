import 'package:portfolio/models/tech_badge.dart';

class Project {
  const Project({
    required this.title,
    required this.description,
    required this.stack,
  });

  final String title;
  final String description;
  final List<TechBadge> stack;
}
