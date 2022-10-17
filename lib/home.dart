import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/my_flutter_app_icons.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  static const primary = Colors.indigo;
  static const secondary = Color.fromARGB(255, 30, 30, 30);

  static const aboutMe =
      "Hi! I'm an electrical engineering student from Brazil who loves coding and someone who loves build my own tools.";
  static const aboutMe2 =
      "During the day I study on college and at my free time I work in my own projects. My majority interests are mobile and games development. I also have tried desktop aplications. When I'm not studying then I'm playing something else.";

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  var isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width,
      height: height,
      child: Stack(
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
            top: 0.25 * height,
            left: 0.22 * width,
            child: Card(
              elevation: 18.0,
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.transparent,
                radius: 0.135 * MediaQuery.of(context).size.width,
                foregroundImage: const AssetImage('assets/images/me.jpg'),
              ),
            ),
          ),
          // Build button toggle theme
          Positioned(
            top: 0.04 * height,
            right: 0.02 * width,
            child: IconButton(
              padding: const EdgeInsets.all(0),
              icon: Icon(
                isDarkMode ? Icons.dark_mode : Icons.light_mode,
                color: isDarkMode ? WelcomeView.primary : WelcomeView.secondary,
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
        color: WelcomeView.primary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'Gabriel Bento',
              style: GoogleFonts.sacramento(
                color: isDarkMode ? WelcomeView.secondary : Colors.white,
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
                _buildSocialButton(icon: MyFlutterApp.linkedin),
                _buildSocialButton(icon: MyFlutterApp.github),
                _buildSocialButton(icon: MyFlutterApp.twitter),
              ],
            ),
          ],
        ),
      );

  Widget _buildSocialButton({required IconData icon}) => IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        color: isDarkMode ? WelcomeView.secondary : Colors.white,
      ));

  Widget _buildRightPanel(double screenWidth, double screenHeight) => Container(
        color: isDarkMode ? WelcomeView.secondary : Colors.white,
        child: Row(
          children: [
            SizedBox(width: 0.2 * screenWidth),
            SizedBox(
              width: 0.34 * screenWidth,
              height: screenHeight,
              child: ListView(children: [
                SizedBox(height: 0.26 * screenHeight),
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
                    color: isDarkMode ? Colors.white : WelcomeView.secondary,
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.6,
                  ),
                ),
                const SizedBox(height: 24),
                SelectableText(
                  WelcomeView.aboutMe,
                  style: GoogleFonts.quicksand(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color:
                        isDarkMode ? Colors.grey[400] : WelcomeView.secondary,
                  ),
                ),
                const SizedBox(height: 18),
                SelectableText(
                  WelcomeView.aboutMe2,
                  style: GoogleFonts.quicksand(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    color:
                        isDarkMode ? Colors.grey[400] : WelcomeView.secondary,
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
                          color: WelcomeView.primary,
                          width: 2,
                        ),
                        padding: const EdgeInsets.all(20),
                        backgroundColor:
                            isDarkMode ? Colors.transparent : Colors.white,
                        foregroundColor: WelcomeView.primary,
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
                            isDarkMode ? WelcomeView.secondary : Colors.white,
                        backgroundColor: WelcomeView.primary,
                        padding: const EdgeInsets.all(20),
                        fixedSize: const Size(140, 40),
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      child: const Text('Contact'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ]),
            ),
          ],
        ),
      );
}
