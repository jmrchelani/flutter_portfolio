import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';
import 'package:flutter_portfolio/widgets/main_page/animated_bars.dart';

class CodingColumn extends StatelessWidget {
  const CodingColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Coding',
          style: TextStyle(
            color: primaryColor.withOpacity(0.8),
            fontSize: 20,
          ),
        ),
        Divider(
          thickness: 0.3,
          color: primaryColor.withOpacity(0.5),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.58,
          label: "JavaScript",
        ),
      ],
    );
  }
}
