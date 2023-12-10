import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/models/me.dart';

import 'package:portfolio/style.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  static final borderRadius = BorderRadius.circular(16);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    
    final photo = Material(
      borderRadius: borderRadius,
      color: Colors.transparent,
      elevation: 12,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(
          'assets/images/my_photo2.jpg',
          width: 300,
          height: 300,
        ),
      ),
    );

    buildColumnData({bool showPhoto = false}) => SizedBox(
          height: showPhoto ? 750 : 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (showPhoto) ...[
                photo,
                const Gap(24),
              ],
              Text(Me.name, style: Style.titleStyle,),
              const Gap(8),
              Text(Me.job, style: Style.subTitleStyle),
              const Gap(8),
              Flexible(child: Text(Me.about, style: Style.normalStyle)),
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
