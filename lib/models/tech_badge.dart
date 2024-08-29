import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class TechBadge {
  const TechBadge({
    required this.name,
    required this.logo,
  });

  final String name;
  final IconData logo;

  static const defaultSize = 48.0;

  static const rust = TechBadge(
    name: 'Rust',
    logo: FontAwesome.rust_brand,
  );

  static const golang = TechBadge(
    name: 'Golang',
    logo: BoxIcons.bxl_go_lang,
  );

  static const c = TechBadge(
    name: 'C',
    logo: FontAwesome.c_solid,
  );

  static const python = TechBadge(
    name: 'Python',
    logo: FontAwesome.python_brand,
  );
  static const mongodb = TechBadge(
    name: 'MongoDB',
    logo: BoxIcons.bxl_mongodb,
  );
  static const flutter = TechBadge(
    name: 'Flutter',
    logo: BoxIcons.bxl_flutter,
  );
  static const cplusplus = TechBadge(
    name: 'C++',
    logo: BoxIcons.bxl_c_plus_plus,
  );

  static const server = TechBadge(
    name: 'Server',
    logo: BoxIcons.bx_server,
  );

  static const desktop = TechBadge(
    name: 'Desktop',
    logo: BoxIcons.bx_desktop,
  );

  static const windows = TechBadge(
    name: 'Windows',
    logo: BoxIcons.bxl_windows,
  );

  static const typescript = TechBadge(
    name: 'Typescript',
    logo: BoxIcons.bxl_typescript,
  );

  static const tag = TechBadge(
    name: 'tag',
    logo: Icons.tag,
  );

  static const godot = TechBadge(
    name: 'Godot',
    logo: Icons.sports_esports,
  );

  static const git = TechBadge(
    name: 'Git',
    logo: BoxIcons.bxl_git,
  );
}
