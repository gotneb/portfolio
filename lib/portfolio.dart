import 'package:flutter/material.dart';
import 'package:portfolio/projects.dart';

import 'home.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        HomeView(isDarkMode: _isDarkMode, changeMode: _changeMode),
        ProjectsView(isDarkMode: _isDarkMode, changeMode: _changeMode),
      ],
    ));
  }

  void _changeMode() => setState(() {
        _isDarkMode = !_isDarkMode;
      });
}
