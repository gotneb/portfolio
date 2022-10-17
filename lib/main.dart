import 'package:flutter/material.dart';
import 'package:portfolio/contacts.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gabriel Bento - Portfolio',
      home: Scaffold(
          body: ListView(
        children: const [
          WelcomeView(),
          ProjectsView(),
          ContactsView(),
        ],
      )),
    );
  }
}
