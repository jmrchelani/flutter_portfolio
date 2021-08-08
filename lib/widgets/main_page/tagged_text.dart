import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';

class TaggedText extends StatelessWidget {
  const TaggedText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(color: Colors.white),
        text: "<",
        children: [
          TextSpan(
            text: text,
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">", style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
