import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/models/tech_stack.dart';

import 'language.dart';
import 'project.dart';
import 'tech_badge.dart';

class Me {
  static const name = 'Gabriel Bento da Silva';
  static const pfp = "assets/images/me.jpg";
  static const about =
      "Wassup! I'm a developer and freelancer mainly focused in android and backend development from Brazil.\nI'm passionate for creating things and learning. I'm usually engaged to talk about programming stuff most likely programming languages. One of my hobbies are creating histories and playing games.\n\nI enjoy problem-solving as well as exposing my creativty through my projects. I enjoy making things by myself from scratch, and also putting effort into making them unique. For me, making something unique is hard, it requires planning, a huge effort and most important, love for what you're doing.";
  static const job = [
    'Mobile Developer',
    'Android Developer',
    'Flutter Developer',
    'Systems Development'
  ];

  static const email = 'gabrielorigenstdb@gmail.com';
  static const subject = 'Job Opportunity';
  static const body =
      'Hello! Feel free to get in touch to discuss opportunities.';

  static const languages = [
    Language(
      name: 'Português',
      profiency: 'Fluent',
      flag: 'assets/images/country_flags/brazil.png',
      greetings: ['Bem vindo! :D'],
      description:
          'Sou profundamente apaixonado por aprender novos idiomas. Gosto muito de entender a cultura e estudar sobre línguas. Estou ansioso para continuar aprendendo e evoluindo nesta jornada. 💖',
    ),
    Language(
      name: 'English',
      profiency: 'Fluent',
      flag: 'assets/images/country_flags/united-kingdom.png',
      greetings: ['Welcome!', 'Pleasure is mine! xD'],
      description:
          "I'm deeply passionate about learning languages. The joy of being able to express and communicate in another language is one of the most rewarding experiences I've ever had. I'm eager to continue learning and growing in this journey. 💖",
    ),
    Language(
      name: '日本語',
      profiency: 'Intermediate',
      flag: 'assets/images/country_flags/japan.png',
      greetings: ['ようこそう', 'お元気ですか'],
      description:
          '私は言語を学ぶことに深い情熱を持っています他の言語で自分を表現しコミュニケーションを取ることの喜びは、私が今まで経験した中で最も素晴らしいものの一つですこの旅を通じてもっと学び成長していくことを楽しみにしています(づ｡◕‿‿◕｡)づ',
    ),
    Language(
      name: 'Deutsch',
      profiency: 'Beginner',
      flag: 'assets/images/country_flags/german.png',
      greetings: ['Willkommen!', 'Freut mich :)'],
      description:
          'Ich bin leidenschaftlich daran interessiert, Sprachen zu lernen. Die Freude, mich in einer anderen Sprache auszudrücken, ist eine der schönsten Erfahrungen, die ich je hatte. Ich freue mich darauf, weiter zu lernen und zu wachsen. 💖',
    ),
  ];

  static const stack = [
    TechStack(name: 'Android', icon: FontAwesome.android_brand),
    TechStack(name: 'C++', icon: BoxIcons.bxl_c_plus_plus),
    TechStack(name: 'Firebase', icon: BoxIcons.bxl_firebase),
    TechStack(name: 'Flutter', icon: BoxIcons.bxl_flutter),
    TechStack(name: 'Rust', icon: FontAwesomeIcons.rust),
    TechStack(name: 'MongoDB', icon: BoxIcons.bxl_mongodb),
    TechStack(name: 'Kotlin', icon: FontAwesomeIcons.connectdevelop),
    TechStack(name: 'Python', icon: FontAwesomeIcons.python),
    TechStack(name: 'PostgreSQL', icon: BoxIcons.bxl_postgresql),
    TechStack(name: 'API Development', icon: BoxIcons.bx_cloud),
    TechStack(name: 'Golang', icon: FontAwesomeIcons.golang),
    TechStack(name: 'Docker', icon: FontAwesome.docker_brand),
  ];

  static final projects = [
    const Project(
      title: 'Crypto Tracker App',
      description:
          '''This project follows the MVI pattern usin a clear separation of concerns and modularity. ViewModels efficiently manage UI states, keeping updates responsive and clean, while Koin handles dependency injection for better testability and maintainability.\n
Ktor powers the API communication, enabling seamless network requests and real-time data fetching. The app features a custom Canvas-based graph to visualize currency trends over time and adapts its theme dynamically based on the user’s background.
\nNavigation is handled with Jetpack’s Adaptable Navigation component, ensuring smooth transitions between screens and an intuitive user experience.
''',
      stack: [
        TechBadge.android,
        TechBadge.kotlin,
      ],
    ),
    const Project(
      title: 'Course App',
      description:
          '''This project follows the MVVM pattern to separate concerns and promote modularity.\n
Room handles saving bookmarked courses using SQL locally on the device. ViewModels manage UI states efficiently, ensuring responsive and clean UI updates. Clear distinction between UI logic, business logic, and data layers. Hilt/Dagger handles dependencies across the app, making it easier to test and manage.
''',
      stack: [
        TechBadge.android,
        TechBadge.kotlin,
        TechBadge.python,
        TechBadge.server,
      ],
    ),
    const Project(
      title: 'Book Reader',
      description:
          '''This project follows the MVVM pattern to separate concerns and promote modularity.\n
ViewModels manage UI states efficiently, ensuring responsive and clean UI updates. Clear distinction between UI logic, business logic, and data layers.\n
Hilt/Dagger handles dependencies across the app, making it easier to test and manage.
''',
      stack: [
        TechBadge.android,
        TechBadge.kotlin,
      ],
    ),
    const Project(
      title: 'Rlox Language',
      description:
          '''This project is a Rust implementation of the Lox interpreter from Crafting Interpreters, originally written in Java. It follows the book’s structure while leveraging Rust’s safety, performance, and ownership model to build a more robust and efficient interpreter.\n
The implementation includes lexical analysis, parsing, and expression evaluation, staying true to the original design while adapting to Rust’s idioms. Memory management is handled safely without a garbage collector, and the interpreter ensures efficient execution with clear separation between syntax analysis and runtime evaluation.\n
This project demonstrates a deep understanding of interpreter design, language parsing, and Rust’s unique features, making it a solid foundation for further enhancements or new language implementations.''',
      stack: [TechBadge.rust],
    ),
    const Project(
      title: 'MangaHub - Read manga',
      description:
          'A published android app for reading thousands of mangas avaliable in english and portuguese.\n\nIt allows users switch from many manga sources. Has ADS, has read/write on device and has connection with our own api.\n\nI\'ve faced many challenges while doing it, like storing data, loading ADS,mutating state globally, exporting to PlayStore and others. But I could overcome them.',
      stack: [TechBadge.android, TechBadge.flutter, TechBadge.python, TechBadge.server],
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
      stack: [TechBadge.android, TechBadge.flutter, TechBadge.python, TechBadge.server],
    ),
    const Project(
      title: 'Electric Circuit Simulator',
      description:
          'Electrophorus (as it\'s named), is a simulator for electronics circuits. And it also has features for plotting system responses in real-time.\n\nIt was my first big project and a very challenging one. Since I was daily improving and relearning POO and was learn how to "rendering" using SkiaSharp. I\'m very proud of this because it fully follows POO design and everything there is rendered using SkiaSharp.',
      stack: [TechBadge.csharp, TechBadge.desktop, TechBadge.windows],
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
