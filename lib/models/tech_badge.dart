import 'package:flutter_svg/flutter_svg.dart';

class TechBadge {
  const TechBadge({
    required this.name,
    required this.logo,
  });

  final String name;
  final SvgPicture logo;

  static const defaultSize = 48.0;

  static final rust = TechBadge(
    name: 'Rust',
    logo: SvgPicture.network('assets/images/svgs/rust.svg',
        width: defaultSize, height: defaultSize),
  );

  static final golang = TechBadge(
    name: 'Golang',
    logo: SvgPicture.network('assets/images/svgs/golang.svg',
        width: defaultSize, height: defaultSize),
  );

  static final csharp = TechBadge(
    name: 'C#',
    logo: SvgPicture.network('assets/images/svgs/csharp.svg',
        width: defaultSize, height: defaultSize),
  );

  static final python = TechBadge(
    name: 'Python',
    logo: SvgPicture.network('assets/images/svgs/python.svg',
        width: defaultSize, height: defaultSize),
  );
  static final mongodb = TechBadge(
    name: 'MongoDB',
    logo: SvgPicture.network('assets/images/svgs/mongodb.svg',
        width: defaultSize, height: defaultSize),
  );
  static final flutter = TechBadge(
    name: 'Flutter',
    logo: SvgPicture.network('assets/images/svgs/flutter.svg',
        width: defaultSize, height: defaultSize),
  );
  static final cplusplus = TechBadge(
    name: 'C++',
    logo: SvgPicture.network('assets/images/svgs/cpp.svg',
        width: defaultSize, height: defaultSize),
  );
}
