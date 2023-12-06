import 'package:portfolio/models/project.dart';
import 'package:portfolio/models/tech_badge.dart';

import 'language.dart';

class Me {
  static const name = 'Gabriel Bento da Silva';

  static const about =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer varius ex elit, in sagittis mauris efficitur non. Morbi tempor imperdiet libero sit amet tristique. Praesent et purus ut orci mollis pellentesque. Suspendisse malesuada dignissim quam, quis dignissim lorem porta sit amet. Donec at leo ac libero tristique interdum nec ac libero. Donec iaculis sollicitudin ipsum. Donec condimentum turpis quis pulvinar blandit. Donec facilisis consectetur lacus eu facilisis. Morbi gravida scelerisque lorem id euismod. Quisque finibus, lectus at varius elementum, dui nisi hendrerit elit, vitae semper enim dui et mauris. Proin mollis magna neque, malesuada accumsan leo iaculis eget. In ut dolor quis nunc dapibus tristique vel at est. ';

  static const job = 'Flutter Developer';

  static const techStack = ['Flutter', 'Rust', 'Python', 'C++', 'C', 'Go'];

  static const languages = [
    Language(
      name: 'Português',
      profiency: 'Native',
      flag: 'assets/images/country_flags/brazil.png',
    ),
    Language(
      name: 'English',
      profiency: 'Advanced',
      flag: 'assets/images/country_flags/english.png',
    ),
    Language(
      name: '日本語',
      profiency: 'Beginner',
      flag: 'assets/images/country_flags/japan.png',
    ),
  ];

  static final projects = [
    Project(
      title: 'Lorem ipsum dolor sit amet',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer varius ex elit, in sagittis mauris efficitur non. Morbi tempor imperdiet libero sit amet tristique. Praesent et purus ut orci mollis pellentesque. Suspendisse malesuada dignissim quam, quis dignissim lorem porta sit amet. Donec at leo ac libero tristique interdum nec ac libero. Donec iaculis sollicitudin ipsum. Donec condimentum turpis quis pulvinar blandit. Donec facilisis consectetur lacus eu facilisis. Morbi gravida scelerisque lorem id euismod. Quisque finibus, lectus at varius elementum, dui nisi hendrerit elit, vitae semper enim dui et mauris. Proin mollis magna neque, malesuada accumsan leo iaculis eget. In ut dolor quis nunc dapibus tristique vel at est. ',
      stack: [TechBadge.rust, TechBadge.golang],
    ),
    Project(
      title: 'Lorem ipsum dolor sit amet',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer varius ex elit, in sagittis mauris efficitur non. Morbi tempor imperdiet libero sit amet tristique. Praesent et purus ut orci mollis pellentesque. Suspendisse malesuada dignissim quam, quis dignissim lorem porta sit amet. Donec at leo ac libero tristique interdum nec ac libero. Donec iaculis sollicitudin ipsum. Donec condimentum turpis quis pulvinar blandit. Donec facilisis consectetur lacus eu facilisis. Morbi gravida scelerisque lorem id euismod. Quisque finibus, lectus at varius elementum, dui nisi hendrerit elit, vitae semper enim dui et mauris. Proin mollis magna neque, malesuada accumsan leo iaculis eget. In ut dolor quis nunc dapibus tristique vel at est. ',
      stack: [TechBadge.python, TechBadge.csharp],
    ),
    Project(
      title: 'Lorem ipsum dolor sit amet',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer varius ex elit, in sagittis mauris efficitur non. Morbi tempor imperdiet libero sit amet tristique. Praesent et purus ut orci mollis pellentesque. Suspendisse malesuada dignissim quam, quis dignissim lorem porta sit amet. Donec at leo ac libero tristique interdum nec ac libero. Donec iaculis sollicitudin ipsum. Donec condimentum turpis quis pulvinar blandit. Donec facilisis consectetur lacus eu facilisis. Morbi gravida scelerisque lorem id euismod. Quisque finibus, lectus at varius elementum, dui nisi hendrerit elit, vitae semper enim dui et mauris. Proin mollis magna neque, malesuada accumsan leo iaculis eget. In ut dolor quis nunc dapibus tristique vel at est. ',
      stack: [TechBadge.flutter, TechBadge.mongodb],
    ),
  ];
}
