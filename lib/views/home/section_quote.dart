import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/style.dart';

class QuoteSection extends StatelessWidget {
  const QuoteSection({super.key});

  static const quote =
      'The rough stone is inside you.\nYou have to find it and then polish it.\nIt takes time and effort.';

  @override
  Widget build(BuildContext context) {
    final divider = Container(
      width: MediaQuery.sizeOf(context).width,
      height: 2,
      color: Colors.black,
    );

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(quote, style: Style.quoteText),
        const Spacer(),
        divider,
        const Gap(16),
        Text('Shirou Nishi (西 司朗)', style: Style.quoteAuthor),
        const Gap(4),
        Text('Quote from Whisper of Heart', style: Style.quoteRef),
      ],
    );

    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 0.8 * MediaQuery.sizeOf(context).height,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: content,
    );
  }
}
