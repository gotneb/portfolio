import 'package:flutter/material.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  static const blackColor = Color.fromARGB(255, 30, 30, 30);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: height,
      color: blackColor,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            width: width,
            height: 0.25 * height,
          ),
          Container(
            color: Colors.green,
            width: width,
            height: 0.75 * height,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 50),
                _buildInputColumn(width, height),
                const SizedBox(width: 50),
                _buildLocalizationColumn(width, height),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputColumn(double width, double height) => Container(
        width: 0.3 * width,
        height: 0.75 * height,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(),
            TextField(),
            TextField(),
            ElevatedButton(
              onPressed: () {},
              child: Row(children: const [
                Text('Send'),
                Icon(Icons.send),
              ]),
            )
          ],
        ),
      );

  Widget _buildLocalizationColumn(double width, double height) => Container(
        width: 0.3 * width,
        height: 0.4 * height,
        color: Colors.blue,
      );
}
