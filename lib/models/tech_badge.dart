class TechBadge {
  const TechBadge({
    required this.name,
    required this.asset,
  });

  final String name;
  final String asset;

  static const _path = 'assets/images/icons';
  static const defaultSize = 48.0;

  static const android = TechBadge(
    name: 'Android',
    asset: '$_path/Android.svg',
  );

  static const kotlin = TechBadge(
    name: 'Kotlin',
    asset: '$_path/Kotlin.svg',
  );

  static const rust = TechBadge(
    name: 'Rust',
    asset: '$_path/Rust.svg',
  );

  static const golang = TechBadge(
    name: 'Golang',
    asset: '$_path/Golang.svg',
  );

  static const csharp = TechBadge(
    name: 'C#',
    asset: '$_path/CSharp.svg',
  );

  static const python = TechBadge(
    name: 'Python',
    asset: '$_path/Python.svg',
  );
  static const mongodb = TechBadge(
    name: 'MongoDB',
    asset: '$_path/MongoDB.svg',
  );
  static const flutter = TechBadge(
    name: 'Flutter',
    asset: '$_path/Flutter.svg',
  );
  static const cplusplus = TechBadge(
    name: 'C++',
    asset: '$_path/CPlusPlus.svg',
  );

  static const server = TechBadge(
    name: 'Server',
    asset: '$_path/Server.svg',
  );

  static const windows = TechBadge(
    name: 'Windows',
    asset: '$_path/Windows.svg',
  );

  static const desktop = TechBadge(
    name: 'Desktop',
    asset: '$_path/Desktop.svg',
  );

  static const godot = TechBadge(
    name: 'Godot',
    asset: '$_path/Godot.svg',
  );

  static const git = TechBadge(
    name: 'Git',
    asset: '$_path/Git.svg',
  );
}
