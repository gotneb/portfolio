import 'package:flutter/widgets.dart';
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
    logo: FontAwesome.rust,
  );

  static const golang = TechBadge(
    name: 'Golang',
    logo: BoxIcons.bxl_go_lang,
  );

  static const csharp = TechBadge(
    name: 'C#',
    logo: FontAwesome.c,
  );

  static const python = TechBadge(
    name: 'Python',
    logo: FontAwesome.python,
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
    name: 'C++',
    logo: BoxIcons.bx_server,
  );
}
