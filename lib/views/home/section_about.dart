import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/me.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    
    final photo = Image.asset(
      'assets/images/my_photo2.jpg',
      width: 300,
      height: 300,
    );

    buildColumnData({bool showPhoto = false}) => Container(
          height: showPhoto ? 600 : 300,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (showPhoto) ...[
                photo,
                const Gap(24),
              ],
              const Text(Me.name),
              const Gap(8),
              const Text(Me.job),
              const Gap(8),
              const Flexible(child: Text(Me.about)),
            ],
          ),
        );

    if (width <= 850) {
      return SizedBox(child: buildColumnData(showPhoto: true));
    }

    return Row(
      children: [
        photo,
        const Gap(24),
        Flexible(child: buildColumnData()),
      ],
    );
  }
}
