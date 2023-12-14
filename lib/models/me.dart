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
      greetings: ['Seja muito bem vindo! :)', 'Oi! Tudo bemm? *-*'],
      description: 'Apesar de português ser minha língua nativa, eu diariamente estou lendo, escutando em inglês. Diversas que aprendi e aprendo foi estudando através de couteúdo em inglês. Atualmente estou entusiasmo em japonês! s2',
    ),
    Language(
      name: 'English',
      profiency: 'Advanced',
      flag: 'assets/images/country_flags/english.png',
      greetings: ['Be welcome!', 'Pleasure is mine! xD'],
      description: "Altough portuguese is my mother tongue, I'm daily reading, listening in english. Most of the things I've learned (and I still learn) were trough my knowledge in english. Currently I'm pretty excited while learn japanese! s2",
    ),
    Language(
      name: '日本語',
      profiency: 'Beginner',
      flag: 'assets/images/country_flags/japan.png',
      greetings: ['初めてなら!', '元気ですか'],
      description: '私の母国語はポルトガル語ですが、毎日英語を読んだり聞いたりしています。 私が学んだこと、そして今でも学んでいることのいくつかは、英語のコンテンツを通じて勉強することでした。 今は日本語に夢中です！ (づ｡◕‿‿◕｡)づ',
    ),
  ];

  static final projects = [
    const Project(
      title: 'Lorem ipsum dolor sit amet',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer varius ex elit, in sagittis mauris efficitur non. Morbi tempor imperdiet libero sit amet tristique. Praesent et purus ut orci mollis pellentesque. Suspendisse malesuada dignissim quam, quis dignissim lorem porta sit amet. Donec at leo ac libero tristique interdum nec ac libero. Donec iaculis sollicitudin ipsum. Donec condimentum turpis quis pulvinar blandit. Donec facilisis consectetur lacus eu facilisis. Morbi gravida scelerisque lorem id euismod. Quisque finibus, lectus at varius elementum, dui nisi hendrerit elit, vitae semper enim dui et mauris. Proin mollis magna neque, malesuada accumsan leo iaculis eget. In ut dolor quis nunc dapibus tristique vel at est. ',
      stack: [TechBadge.rust, TechBadge.golang],
    ),
    const Project(
      title: 'Lorem ipsum dolor sit amet',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer varius ex elit, in sagittis mauris efficitur non. Morbi tempor imperdiet libero sit amet tristique. Praesent et purus ut orci mollis pellentesque. Suspendisse malesuada dignissim quam, quis dignissim lorem porta sit amet. Donec at leo ac libero tristique interdum nec ac libero. Donec iaculis sollicitudin ipsum. Donec condimentum turpis quis pulvinar blandit. Donec facilisis consectetur lacus eu facilisis. Morbi gravida scelerisque lorem id euismod. Quisque finibus, lectus at varius elementum, dui nisi hendrerit elit, vitae semper enim dui et mauris. Proin mollis magna neque, malesuada accumsan leo iaculis eget. In ut dolor quis nunc dapibus tristique vel at est. ',
      stack: [TechBadge.python, TechBadge.csharp],
    ),
    const Project(
      title: 'Lorem ipsum dolor sit amet',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer varius ex elit, in sagittis mauris efficitur non. Morbi tempor imperdiet libero sit amet tristique. Praesent et purus ut orci mollis pellentesque. Suspendisse malesuada dignissim quam, quis dignissim lorem porta sit amet. Donec at leo ac libero tristique interdum nec ac libero. Donec iaculis sollicitudin ipsum. Donec condimentum turpis quis pulvinar blandit. Donec facilisis consectetur lacus eu facilisis. Morbi gravida scelerisque lorem id euismod. Quisque finibus, lectus at varius elementum, dui nisi hendrerit elit, vitae semper enim dui et mauris. Proin mollis magna neque, malesuada accumsan leo iaculis eget. In ut dolor quis nunc dapibus tristique vel at est. ',
      stack: [TechBadge.flutter, TechBadge.mongodb],
    ),
  ];
}
