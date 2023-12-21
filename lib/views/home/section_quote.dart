import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/style.dart';

class QuoteSection extends StatelessWidget {
  const QuoteSection({super.key});

  static const quote =
      'The rough stone is inside you.\nYou have to find it and then polish it.\nIt takes time and effort.';
  static const author = 'Shirou Nishi (西 司朗)';
  static const description = 'Quote from Whisper of Heart';
  static const authorPhoto =
      'https://64.media.tumblr.com/a6c16595bad89d5d075c73467492c942/a60e5a2731dab8e7-64/s540x810/7343ee1ee6490eb3c43a799d4f0a13905b4060a5.gif';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final divider = Container(
      width: width,
      height: 2,
      color: Colors.black,
    );

    final radius = width > 1500
        ? 0.1 * width
        : width > 750.0
            ? 130.0
            : 88.0;
    final outerRadius = radius + (width > 750.0 ? 16 : 8);

    final quoteAuthorPhoto = Material(
      borderRadius: BorderRadius.circular(outerRadius),
      elevation: 12,
      child: CircleAvatar(
        radius: outerRadius,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: radius,
          foregroundImage: const NetworkImage(authorPhoto),
        ),
      ),
    );

    final content = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(quote, style: Style.quoteText),
        const Spacer(),
        divider,
        const Gap(16),
        Text(author, style: Style.quoteAuthor),
        const Gap(8),
        Row(children: [
          Text(description, style: Style.quoteRef),
          const Gap(8),
          const Icon(Icons.north_east, color: Colors.black),
        ]),
      ],
    );

    final xAxis = width > 1500 ? 0.08 * width : 86.0;
    final yAxis = width > 1500 ? 0.05 * width : 90.0;

    final stack = Stack(children: [
      content,
      Transform.translate(
        offset: Offset(xAxis, -yAxis),
        child: Align(
          alignment: Alignment.topRight,
          child: quoteAuthorPhoto,
        ),
      ),
    ]);

    return Container(
      width: width,
      height: 0.8 * MediaQuery.sizeOf(context).height,
      margin: EdgeInsets.only(right: xAxis, top: yAxis),
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: stack,
    );
  }
}
