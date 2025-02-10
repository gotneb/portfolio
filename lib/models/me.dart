import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/models/tech_stack.dart';

import 'language.dart';
import 'project.dart';
import 'tech_badge.dart';

class Me {
  static const name = 'Gabriel Bento da Silva';
  static const about = "Wassup! I'm a developer and freelancer mainly focused in android and backend development from Brazil.\nI'm passionate for creating things and learning. I'm usually engaged to talk about programming stuff most likely programming languages. One of my hobbies are creating histories and playing games.\n\nI enjoy problem-solving as well as exposing my creativty through my projects. I enjoy making things by myself from scratch, and also putting effort into making them unique. For me, making something unique is hard, it requires planning, a huge effort and most important, love for what you're doing.";
  static const job = ['Mobile Developer', 'Android Developer', 'Flutter Developer', 'Systems Development'];
  
  static const email = 'gabrielorigenstdb@gmail.com';
  static const subject = 'Job Opportunity';
  static const body = 'Hello! Feel free to get in touch to discuss opportunities.';

  static const languages = [
    Language(
      name: 'Português',
      profiency: 'Fluent',
      flag: 'assets/images/country_flags/brazil.png',
      greetings: ['Bem vindo! :D'],
      description:
          'Eu amo aprender novos idiomas. É muito interessante aprender como cada língua se comporta e suas características.',
    ),
    Language(
      name: 'English',
      profiency: 'Fluent',
      flag: 'assets/images/country_flags/united-kingdom.png',
      greetings: ['Welcome!', 'Pleasure is mine! xD'],
      description:
          "Although portuguese is my mother tongue, I'm daily reading and listening in english. Most of the things I've learned were through my knowledge in english. Currently I'm pretty excited while learning japanese! 💖",
    ),
    Language(
      name: '日本語',
      profiency: 'Intermediate',
      flag: 'assets/images/country_flags/japan.png',
      greetings: ['ようこそう', 'お元気ですか'],
      description:
          'ポルトガル語は私の母国語ですが、私は毎日英語を読んだり聞いたりしています。 私が学んだことのいくつかは、英語のコンテンツを通じて勉強することでした。 私は今、日本語を学ぶことにとても興奮しています。(づ｡◕‿‿◕｡)づ',
    ),
    Language(
      name: 'Deutsch',
      profiency: 'Beginner',
      flag: 'assets/images/country_flags/german.png',
      greetings: ['Willkommen!', 'Freut mich :)'],
      description: 'Obwohl Portugiesisch meine Muttersprache ist, lese und höre ich täglich auf Englisch. Vieles, was ich gelernt habe, habe ich durch das Studium von englischen Inhalten gelernt. Zurzeit bin ich begeistert, Japanisch zu lernen!',
    ),
  ];

  static const stack = [
    TechStack(name: 'Flutter', icon: BoxIcons.bxl_flutter),
    TechStack(name: 'Kotlin', icon: FontAwesomeIcons.connectdevelop),
    TechStack(name: 'Android', icon: FontAwesome.android_brand),
    TechStack(name: 'Docker', icon: FontAwesome.docker_brand),
    TechStack(name: 'C++', icon: BoxIcons.bxl_c_plus_plus),
    TechStack(name: 'Rust', icon: FontAwesomeIcons.rust),
    TechStack(name: 'Python', icon: FontAwesomeIcons.python),
    TechStack(name: 'Golang', icon: FontAwesomeIcons.golang),
    TechStack(name: 'PostgreSQL', icon: BoxIcons.bxl_postgresql),
    TechStack(name: 'MongoDB', icon: BoxIcons.bxl_mongodb),
    TechStack(name: 'Firebase', icon: BoxIcons.bxl_firebase),
    TechStack(name: 'API Development', icon: BoxIcons.bx_cloud),
  ];

  static final projects = [
    const Project(
      title: 'MangaHub - Read manga',
      description:
          'A published android app for reading thousands of mangas avaliable in english and portuguese.\n\nIt allows users switch from many manga sources. Has ADS, has read/write on device and has connection with our own api.\n\nI\'ve faced many challenges while doing it, like storing data, loading ADS,mutating state globally, exporting to PlayStore and others. But I could overcome them.',
      stack: [
        TechBadge.flutter,
        TechBadge.typescript,
        TechBadge.python,
        TechBadge.server
      ],
    ),
    const Project(
      title: 'Studio Ghibli Site',
      description:
          'A beautiful, netflix-like site that displays all Studio Ghibli movies and its information.\n\nThe site is connected with my own api that I\'ve made specifficaly for this, and has astonishing animations. You can also use queries to find a specific movie.\n\nWhile developing it, I could learn so much about animations and how to handle them and also how to integrate video streams. That one was really challenging.',
      stack: [TechBadge.flutter, TechBadge.rust, TechBadge.mongodb],
    ),
    const Project(
      title: 'Manga Scrapper',
      description:
          'A powerful script that uses Selenium alongside MongoDB, to scrapes data from many manga websites and store them into our own webserver.\n\nYou can fetch everything related to manga. It includes: description, pages, all chapters, populars mangas right now and more!',
      stack: [TechBadge.python, TechBadge.mongodb, TechBadge.server],
    ),
    const Project(
      title: 'Youtube Downloader',
      description:
          'An app that downloads audio and videos from youtube. It\'s connected with a package in pub.dev that exposes youtube api\'s therefore allowing me saving videos in user\'s device.\n\nDownload audio was a big challenge since I had no clue how to make it. Then I learned about FFMPEG, and how to convert video to audio using it. Because youtube\'s api doesn\'t provie the audio stream at all.',
      stack: [TechBadge.flutter, TechBadge.python, TechBadge.server],
    ),
    const Project(
      title: 'Electric Circuit Simulator',
      description:
          'Electrophorus (as it\'s named), is a simulator for electronics circuits. And it also has features for plotting system responses in real-time.\n\nIt was my first big project and a very challenging one. Since I was daily improving and relearning POO and was learn how to "rendering" using SkiaSharp. I\'m very proud of this because it fully follows POO design and everything there is rendered using SkiaSharp.',
      stack: [TechBadge.c, TechBadge.tag, TechBadge.desktop, TechBadge.windows],
    ),
    const Project(
      title: 'Studio Ghibli Api',
      description:
          'A small api about all movies related to Studio Ghibli that gives all data related to that movie. It also has features for querying movies.\n\nIt has integration with my database and I\'ve also learnt how to use actix-web and how rust handles envy variables.\n\nThis is my first Rust project, and besides it simple, I had so much to learn that I\'m actually proud to show it.',
      stack: [TechBadge.rust, TechBadge.mongodb, TechBadge.server],
    ),
    const Project(
      title: 'Manga Api',
      description:
          'A simple scraper/api that fetches (fetched, I\'m no longer updating it) many manga websites and stored them in my own server.\n\nI could learn a lot about what\'s an API\'s and how to make one, how a scraper works, I mean... How data is stored into a site and how to track them and how to store into a database.\n\nBesides it\'s simple, I really struggled to learn 3 of those in this project. I felt that was a big achievement.',
      stack: [TechBadge.golang, TechBadge.mongodb],
    ),
    const Project(
      title: 'Super Bomberman 2',
      description:
          'Because I always loved games since my childhood, and Bomberman were one of the most I\'ve enjoyed playing... I actually create a small copy of it.\n\nIt\'s not complete, but it has the basic mechanics: items, explosions, a map etc... So it\'s playable.\n\nI couldn\'t finish it, because that time I was full of activies at college.',
      stack: [TechBadge.godot, TechBadge.git],
    ),
  ];
}
