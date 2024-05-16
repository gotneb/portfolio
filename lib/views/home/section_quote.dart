import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/style.dart';

class QuoteSection extends StatelessWidget {
  const QuoteSection({super.key});

  static const quote =
      'The rough stone is inside you.\nYou have to find it and then polish it.\nIt takes time and effort."';
  static const author = 'Shirou Nishi (西 司朗)';
  static const description = 'Quote from Whisper of Heart (1995)';
  static const authorPhoto = 'assets/images/nishi.png';

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
    final outerRadius = radius + (width > 750.0 ? 12 : 8);

    final quoteAuthorPhoto = Material(
      borderRadius: BorderRadius.circular(outerRadius),
      elevation: 12,
      child: CircleAvatar(
        radius: outerRadius,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: radius,
          foregroundImage: const AssetImage(authorPhoto),
        ),
      ),
    );

    final quoteMark = Transform.flip(
      flipX: true,
      child: const Icon(Icons.format_quote, color: Colors.black, size: 90),
    );

    final content = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        quoteMark,
        Text(quote, style: Style.quoteText),
        const Spacer(),
        divider,
        const Gap(16),
        Text(author, style: Style.quoteAuthor),
        const Gap(8),
        Text(description, style: Style.quoteRef),
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
      height: 0.82 * MediaQuery.sizeOf(context).height,
      margin: EdgeInsets.only(right: xAxis, top: yAxis),
      padding: const EdgeInsets.fromLTRB(48, 32, 32, 32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: stack,
    );
  }
}
