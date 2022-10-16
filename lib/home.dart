import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/my_flutter_app_icons.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const primary = Colors.greenAccent;
  static final secondary = Colors.black.withOpacity(0.9);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Build left and right panels
          Row(
            children: [
              SizedBox(
                width: 0.35 * width,
                height: height,
                child: _buildLeftPanel(),
              ),
              SizedBox(
                width: 0.65 * width,
                height: height,
                child: _buildRightPanel(width, height),
              ),
            ],
          ),
          // Build my profile photo
          Positioned(
            top: 0.23 * height,
            left: 0.22 * width,
            child: Card(
              elevation: 18.0,
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: CircleAvatar(
                radius: 0.13 * MediaQuery.of(context).size.width,
                foregroundImage: const AssetImage('assets/me.jpg'),
              ),
            ),
          ),
          // Build button theme
          Positioned(
            top: 0.02 * height,
            right: 0.02 * width,
            child: IconButton(
              padding: const EdgeInsets.all(0),
              icon: Icon(
                isDarkMode ? Icons.dark_mode : Icons.light_mode,
                color: isDarkMode ? HomeView.primary : HomeView.secondary,
                size: 24,
              ),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLeftPanel() => Container(
        padding: const EdgeInsets.fromLTRB(40, 40, 0, 40),
        color: HomeView.primary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gabriel Bento',
              style: GoogleFonts.sacramento(
                color: isDarkMode ? HomeView.secondary : Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Wrap(
              direction: Axis.horizontal,
              runSpacing: 10,
              spacing: 10,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      MyFlutterApp.linkedin,
                      color: isDarkMode ? HomeView.secondary : Colors.white,
                    )),
                //const SizedBox(width: 15),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      MyFlutterApp.github,
                      color: isDarkMode ? HomeView.secondary : Colors.white,
                    )),
                //const SizedBox(width: 15),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      MyFlutterApp.twitter,
                      color: isDarkMode ? HomeView.secondary : Colors.white,
                    )),
              ],
            ),
          ],
        ),
      );

  Widget _buildRightPanel(double screenWidth, double screenHeight) => Container(
        color: isDarkMode ? HomeView.secondary : Colors.white,
        child: Center(
          child: SizedBox(
            width: 0.32 * screenWidth,
            height: 0.7 * screenHeight,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SelectableText(
                'Flutter Developer',
                style: GoogleFonts.quicksand(
                  fontSize: 20,
                  letterSpacing: 1.2,
                  color: isDarkMode
                      ? Colors.grey[200]
                      : Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 6),
              SelectableText(
                'Gabriel Bento',
                style: GoogleFonts.archivo(
                  color: isDarkMode ? Colors.white : HomeView.secondary,
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.6,
                ),
              ),
              const SizedBox(height: 24),
              SelectableText(
                "There wasn't a bird in the sky, but that was not what caught her attention. It was the clouds. The deep green that isn't the color of clouds, but came with these. She knew what was coming and she hoped she was prepared.",
                style: GoogleFonts.quicksand(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  color: isDarkMode ? Colors.grey[400] : HomeView.secondary,
                ),
              ),
              const SizedBox(height: 22),
              Wrap(
                direction: Axis.horizontal,
                runSpacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      side: const BorderSide(
                        color: HomeView.primary,
                        width: 2,
                      ),
                      padding: const EdgeInsets.all(20),
                      backgroundColor:
                          isDarkMode ? Colors.transparent : Colors.white,
                      foregroundColor: HomeView.primary,
                      fixedSize: const Size(140, 40),
                      textStyle: const TextStyle(letterSpacing: 1),
                    ),
                    child: const Text('Download CV'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      foregroundColor:
                          isDarkMode ? HomeView.secondary : Colors.white,
                      backgroundColor: HomeView.primary,
                      padding: const EdgeInsets.all(20),
                      fixedSize: const Size(140, 40),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    child: const Text('Contact'),
                  ),
                ],
              ),
            ]),
          ),
        ),
      );
}
