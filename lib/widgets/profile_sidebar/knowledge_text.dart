import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.done,
          color: primaryColor,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(color: Colors.white54),
          ),
        ),
      ],
    );
  }
}
