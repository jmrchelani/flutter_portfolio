import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/widgets/main_page/animated_bars.dart';

class StatsText extends StatelessWidget {
  const StatsText({
    Key? key,
    required this.number,
    required this.text,
  }) : super(key: key);

  final int number;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedCounter(
          value: number,
          text: '+',
        ),
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
