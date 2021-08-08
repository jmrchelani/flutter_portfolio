import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants.dart';

class AchievementText extends StatelessWidget {
  const AchievementText({
    Key? key,
    this.url,
    required this.text,
  }) : super(key: key);

  static int counter = 0;
  final String text;
  final String? url;

  @override
  Widget build(BuildContext context) {
    counter++;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Text(
            counter.toString() + '.',
            style: TextStyle(color: primaryColor),
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
          SizedBox(
            width: 10,
          ),
          if (url != null)
            Icon(
              Icons.outbond_outlined,
              color: primaryColor,
              size: 18,
            ),
        ],
      ),
    );
  }
}
