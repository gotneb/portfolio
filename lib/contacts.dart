import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/custom_buttom.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  static const blackColor = Color.fromARGB(255, 30, 30, 30);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: 0.9 * height,
      color: blackColor,
      child: Column(children: [
        Container(
          color: blackColor,
          width: width,
          height: 0.2 * height,
          child: _buildHeader(),
        ),
        Center(
          child: Container(
            color: blackColor,
            width: 0.5 * width,
            height: 0.7 * height,
            child: _buildInputColumn(width, height),
          ),
        ),
      ]),
    );
  }

  Widget _buildHeader() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 50),
          Text(
            'Contacts',
            style: GoogleFonts.palanquinDark(
              color: Colors.indigo,
              fontSize: 75,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ],
      );

  Widget _buildInputColumn(double width, double height) => SizedBox(
        width: 0.25 * width,
        height: 0.6 * height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLocationlRow(
                icon: Icons.location_on, text: 'Manaus, Amazonas, Brazil'),
            const SizedBox(height: 10),
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Bruce Lee...',
                hintStyle: GoogleFonts.nunito(
                  color: Colors.grey[350],
                  fontWeight: FontWeight.w700,
                ),
                labelStyle: GoogleFonts.nunito(
                  color: Colors.indigo,
                  fontWeight: FontWeight.w700,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.indigo),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.indigo),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              style: const TextStyle(color: Colors.white),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'example@gmail.com',
                hintStyle: GoogleFonts.nunito(
                  color: Colors.grey[350],
                  fontWeight: FontWeight.w700,
                ),
                labelStyle: GoogleFonts.nunito(
                  color: Colors.indigo,
                  fontWeight: FontWeight.w700,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.indigo),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: Colors.indigo),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 160,
              child: TextField(
                textAlign: TextAlign.start,
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
                maxLines: 15,
                decoration: InputDecoration(
                  labelText: 'Message',
                  hintText: '...',
                  hintStyle: GoogleFonts.nunito(
                    color: Colors.grey[350],
                    fontWeight: FontWeight.w700,
                  ),
                  labelStyle: GoogleFonts.nunito(
                    color: Colors.indigo,
                    fontWeight: FontWeight.w700,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 3, color: Colors.indigo),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 3, color: Colors.indigo),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            HoverButton(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('Send',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                    Icon(Icons.send, color: blackColor),
                  ],
                )),
          ],
        ),
      );

  Widget _buildLocationlRow({
    required IconData icon,
    required String text,
  }) =>
      Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.indigo,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: blackColor),
          ),
          const SizedBox(width: 20),
          Text(
            text,
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      );
}
